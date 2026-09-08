# 项目协作约定

适用范围：本目录及其所有子目录。

## 开始工作前

1. 阅读 `PROJECT_CONTEXT.md`、本文件与 `AGENT_ACTIVITY_LOG.md` 的最近记录。
2. 保持项目为 Godot 4.x + GDScript 的 2D 横版动作原型；不要在没有明确要求时引入第三方框架、ECS 或全局事件总线。
3. 文件和目录使用小写 `snake_case`。场景放在 `scenes/`，脚本放在 `scripts/`，可复用数据资源放在 `resources/`，原始素材放在 `assets/`。

## 行动日志

每次完成一项有意义的操作（检查、创建、修改、验证或外部命令建议）后，追加一条日志：

```bash
bash tools/log_action.sh "类别" "简要结果" "涉及路径（可选）"
```

不要改写或删除旧日志。需要安装软件、使用 `sudo`、升级系统或执行其他需要用户授权的外部变更时，只给出命令、用途和验证方式，并在日志中标记为“待用户执行”。

## 验证

优先运行与改动相称的最小验证。Godot 可用时，可使用：

```bash
godot --headless --path . --editor --quit
```
