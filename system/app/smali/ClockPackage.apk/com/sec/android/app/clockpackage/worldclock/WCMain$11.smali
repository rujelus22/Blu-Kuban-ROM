.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 765
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 768
    return-void
.end method
