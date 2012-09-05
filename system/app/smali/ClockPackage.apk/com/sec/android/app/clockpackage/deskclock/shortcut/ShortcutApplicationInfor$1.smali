.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;
.super Ljava/lang/Object;
.source "ShortcutApplicationInfor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;Landroid/content/Intent;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->access$000(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-void
.end method
