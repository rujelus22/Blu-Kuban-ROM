.class public Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToWorldClockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;
    }
.end annotation


# static fields
.field private static dialog_state:Z


# instance fields
.field private ACTION_WORLDCLOCK_DIALOG:Ljava/lang/String;

.field private ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const-string v0, "android.intent.action.SHOW_WORLDCLOCK_DIALOG"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG:Ljava/lang/String;

    .line 42
    const-string v0, "com.android.systemui.statusbar.phone.COLLAPSED"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    return p0
.end method

.method private displayDialog(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x200

    .line 59
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog() start / dialog_state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 63
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 64
    const/16 v2, -0xa

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 65
    const/16 v2, -0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 66
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 70
    const/4 v0, 0x0

    .line 72
    :try_start_54
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "TYPE_STATUS_BAR_OVERLAY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_62

    .line 74
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_61} :catch_90
    .catch Ljava/lang/NoSuchFieldException; {:try_start_54 .. :try_end_61} :catch_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_61} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_61} :catch_8a

    move-result v0

    .line 82
    :cond_62
    :goto_62
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setType(I)V

    .line 83
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->show()V

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    .line 86
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog() end / dialog_state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 79
    :catch_8a
    move-exception v2

    goto :goto_62

    .line 78
    :catch_8c
    move-exception v2

    goto :goto_62

    .line 77
    :catch_8e
    move-exception v2

    goto :goto_62

    .line 76
    :catch_90
    move-exception v2

    goto :goto_62
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 50
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToWorldClockReceiver : ACTION_WORLDCLOCK_DIALOG received() /dialog_state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-boolean v0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->dialog_state:Z

    if-nez v0, :cond_2d

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->displayDialog(Landroid/content/Context;)V

    .line 55
    :cond_2d
    return-void
.end method
