.class Lcom/samsung/swift/install/InstallActivity$2;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/install/InstallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$2;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$2;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/install/InstallActivity;->finish()V

    .line 289
    return-void
.end method
