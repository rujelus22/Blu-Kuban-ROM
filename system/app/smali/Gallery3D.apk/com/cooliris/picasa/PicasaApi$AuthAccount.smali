.class public final Lcom/cooliris/picasa/PicasaApi$AuthAccount;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/PicasaApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthAccount"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authToken:Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 4
    .parameter "user"
    .parameter "authToken"
    .parameter "account"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    .line 91
    return-void
.end method
