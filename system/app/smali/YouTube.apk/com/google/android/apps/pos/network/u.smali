.class public Lcom/google/android/apps/pos/network/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field protected source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const-string v0, "native:android_app"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/u;->source:Ljava/lang/String;

    return-void
.end method
