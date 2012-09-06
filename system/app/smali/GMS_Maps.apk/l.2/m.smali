.class public LL/m;
.super Lcom/google/commerce/wireless/topiary/N;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/commerce/wireless/topiary/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 11
    const-string v0, "offerlogservice"

    invoke-direct {p0, p1, v0}, Lcom/google/commerce/wireless/topiary/N;-><init>(Lcom/google/commerce/wireless/topiary/Q;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static a(Lcom/google/commerce/wireless/topiary/Q;)LL/m;
    .registers 2
    .parameter

    .prologue
    .line 15
    new-instance v0, LL/m;

    invoke-direct {v0, p0}, LL/m;-><init>(Lcom/google/commerce/wireless/topiary/Q;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/J;LL/g;Lcom/google/commerce/wireless/topiary/H;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const-string v1, "log"

    invoke-static {}, LL/j;->a()LL/j;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/google/commerce/wireless/topiary/N;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;Lcom/google/commerce/wireless/topiary/H;)V

    .line 19
    return-void
.end method
