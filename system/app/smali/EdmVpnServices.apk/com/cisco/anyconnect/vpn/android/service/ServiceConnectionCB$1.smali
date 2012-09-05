.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;
.super Ljava/lang/Object;
.source "ServiceConnectionCB.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnBindTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    #getter for: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->access$000(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    return-void
.end method
