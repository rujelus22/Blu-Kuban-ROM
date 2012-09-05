.class Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;
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
    .line 134
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->val$this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.clockpackage.WORLD_ACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/clockpackage/ClockPackage;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v1, "ADD_CITY"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 149
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$100(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    .line 152
    return-void
.end method
