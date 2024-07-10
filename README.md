# 好运来

广州中考结束好几天，但成绩不知道什么时候出来，所以就写了个程序，来检测成绩有没有出来。

## 安装

下载 `build/xxx.exe`，即可。`xxx` 为对应的地名，如 `guangzhou.exe`，为广州中考查询。

- `build/guangzhou.exe`：广州中考；
- `build/qingdao_admissions_examination_institute.exe`：青岛市招生考试院；
- `build/cfszk.exe`：赤峰市中考信息网；

## 使用

### 如何启用开机自启动

1. 按 `Win` + `R` 键，输入 `shell:startup`，确认。
2. 将 `好运来.exe` 拖入到该目录下。

### 如何停用开机自启动

1. 按 `Win` + `R` 键，输入 `shell:startup`，确认。
2. 将 `好运来.exe` 从该目录下删除。

## 开发

代码存放在 `.\bin\` 目录下

## 编译

只能在 Windows 下编译。

```sh
.\build.bat <name-without-extension>
```

### 示例

```sh
.\build.bat guangzhou
```
