.class public Lcom/sec/android/app/phoneutil/appConfig;
.super Ljava/lang/Object;
.source "appConfig.java"


# static fields
.field private static final instance:Lcom/sec/android/app/phoneutil/appConfig;


# instance fields
.field private prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/sec/android/app/phoneutil/appConfig;

    invoke-direct {v0}, Lcom/sec/android/app/phoneutil/appConfig;-><init>()V

    sput-object v0, Lcom/sec/android/app/phoneutil/appConfig;->instance:Lcom/sec/android/app/phoneutil/appConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    .line 21
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    .line 25
    const-string v1, "ril.model_id"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, product:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const-string v1, "I9103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/appConfig;->setupI9103()V

    .line 49
    :goto_27
    return-void

    .line 33
    :cond_28
    const-string v1, "I9100G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/appConfig;->setupI9100G()V

    goto :goto_27

    .line 37
    :cond_34
    const-string v1, "E110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E120S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E120K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E120L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E160S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E160K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "E160L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 41
    :cond_6c
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/appConfig;->setupE110S()V

    goto :goto_27

    .line 45
    :cond_70
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/appConfig;->setupI9100()V

    goto :goto_27
.end method

.method public static getInstance()Lcom/sec/android/app/phoneutil/appConfig;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/sec/android/app/phoneutil/appConfig;->instance:Lcom/sec/android/app/phoneutil/appConfig;

    return-object v0
.end method

.method private setupE110S()V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_UART"

    const-string v2, "/sys/class/sec/switch/uart_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_USB"

    const-string v2, "/sys/class/sec/switch/usb_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private setupI9100()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_UART"

    const-string v2, "/sys/class/sec/switch/uart_sel/value"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_USB"

    const-string v2, "/sys/class/sec/switch/usb_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private setupI9100G()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_UART"

    const-string v2, "/sys/devices/t1_otg/uart_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_USB"

    const-string v2, "/sys/devices/t1_otg/usb_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private setupI9103()V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_UART"

    const-string v2, "/sys/devices/platform/i2c-gpio.11/i2c-11/11-0025/uartsel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_USB"

    const-string v2, "/sys/devices/platform/i2c-gpio.11/i2c-11/11-0025/usbsel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "arg"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/appConfig;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
