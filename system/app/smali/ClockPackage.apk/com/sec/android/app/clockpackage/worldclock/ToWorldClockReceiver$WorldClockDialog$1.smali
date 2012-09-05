.class Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;
.super Ljava/lang/Object;
.source "ToWorldClockReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

.field final synthetic val$this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;->val$this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 128
    const-string v0, "ToWorldClockReceiver"

    const-string v1, "mCloseBtn clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$100(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    .line 130
    return-void
.end method
