.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Z)V

    .line 444
    return-void
.end method
