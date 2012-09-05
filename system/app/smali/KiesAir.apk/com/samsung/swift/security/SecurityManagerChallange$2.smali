.class Lcom/samsung/swift/security/SecurityManagerChallange$2;
.super Ljava/lang/Object;
.source "SecurityManagerChallange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 456
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$2;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$2;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #getter for: Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$400(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 461
    return-void
.end method
