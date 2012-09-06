.class LIv;
.super Ljava/util/AbstractList;
.source "HoneycombActionBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIu;

.field final synthetic a:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(LIu;[Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, LIv;->a:LIu;

    iput-object p2, p0, LIv;->a:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, LIv;->a:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1}, LIv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, LIv;->a:[Landroid/accounts/Account;

    array-length v0, v0

    return v0
.end method
