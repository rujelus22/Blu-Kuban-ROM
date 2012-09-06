.class Lcom/google/android/apps/common/offerslib/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/H;


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/v;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/v;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/w;->a:Lcom/google/android/apps/common/offerslib/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 120
    const-string v0, "OfferLogClient"

    const-string v1, "log request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public a(LL/j;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public bridge synthetic a(Lbk/p;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    check-cast p1, LL/j;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/offerslib/w;->a(LL/j;)V

    return-void
.end method
