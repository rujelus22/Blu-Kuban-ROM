.class public Lcom/google/android/finsky/utils/FinskyDebug$Environment;
.super Ljava/lang/Object;
.source "FinskyDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/FinskyDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Environment"
.end annotation


# instance fields
.field public final checkoutTokenType:Ljava/lang/String;

.field public final dfeBaseUrl:Ljava/lang/String;

.field public final escrowUrl:Ljava/lang/String;

.field public final vendingBaseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "dfeBaseUrl"
    .parameter "vendingBaseUrl"
    .parameter "checkoutTokenType"
    .parameter "escrowUrl"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->dfeBaseUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->vendingBaseUrl:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->checkoutTokenType:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->escrowUrl:Ljava/lang/String;

    .line 46
    return-void
.end method
