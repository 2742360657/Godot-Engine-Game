# 本机环境与引擎配置

该原型使用 **Godot 4.7.x（稳定版）**、GDScript、Linux 原生编辑器和 Git。项目已包含 `project.godot` 与最小启动场景；安装完成后无需再创建项目。

## 需要你执行的安装

Arch Linux 官方仓库当前提供 `godot` 4.7.2-1。请在终端执行：

```bash
sudo pacman -S godot
```

这会安装 Godot 4 编辑器及其运行依赖；`sudo` 会修改系统软件包，因此由你确认并执行。若 pacman 要求同步软件仓库或提示更新，先确认变更清单符合你的预期。

可选但建议建立版本控制：

```bash
git init
git add .
git commit -m "Initialize Godot action prototype"
```

这三条命令依次在当前目录创建本地 Git 仓库、暂存文件、创建首个本地提交；不会上传任何内容。请先检查 `git status`，确认要提交的内容。

## 安装后的验证

在项目根目录执行：

```bash
godot --version
godot --headless --path . --editor --quit
godot --editor --path .
```

第一条确认安装版本；第二条无窗口加载并校验工程；第三条启动编辑器并打开当前项目。通过后，在 Godot 中按 `F6` 或 `F5` 运行；当前会加载空的 `Main` 场景，这是有意保留的原型入口。

## 目录说明

| 路径 | 用途 |
| --- | --- |
| `scenes/actors` | 玩家、敌人等实体场景 |
| `scenes/levels` | 测试房间和关卡 |
| `scenes/ui` | HUD、菜单与调试 UI |
| `scripts/actors` | Player、Enemy 等实体脚本 |
| `scripts/components` | 可组合能力，如 hitbox、health |
| `scripts/systems` | 相机、战斗和调试等系统级脚本 |
| `resources/data` | 可在 Inspector 编辑的数值/配置资源 |
| `assets/` | 原始美术、音频、字体、瓦片与特效素材 |
| `tests/` | 可独立运行的验证场景或测试脚本 |
| `AGENT_ACTIVITY_LOG.md` | 每项协作操作的可查看审计日志 |
