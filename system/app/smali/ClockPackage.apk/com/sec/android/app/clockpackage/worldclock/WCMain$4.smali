.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->makeListHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

.field final synthetic val$headlayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;->val$headlayout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;->val$headlayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;->val$headlayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Z)V

    .line 422
    return-void
.end method
