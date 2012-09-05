.class Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;
.super Ljava/lang/Object;
.source "ToWorldClockReceiver.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-virtual {p1, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 276
    .local v1, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v1, :cond_42

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.clockpackage.WORLD_ACTION"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/clockpackage/ClockPackage;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    const v3, 0x8000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 288
    .local v2, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;->this$1:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->access$100(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    .line 292
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_42
    return-void
.end method
