.class public final Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EasBusiness"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field customerId:Ljava/lang/String;

.field governmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasData()Z
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
