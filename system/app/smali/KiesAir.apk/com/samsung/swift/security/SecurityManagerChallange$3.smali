.class Lcom/samsung/swift/security/SecurityManagerChallange$3;
.super Ljava/lang/Object;
.source "SecurityManagerChallange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityManagerChallange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityManagerChallange;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V
    .registers 2
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$3;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$3;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    const/4 v1, 0x1

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->commitAndFinish(Z)V
    invoke-static {v0, v1}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$500(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V

    .line 479
    return-void
.end method