.class final Lcom/google/android/apps/unveil/env/Providers$1;
.super Ljava/lang/Object;
.source "Providers.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/Providers$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Providers$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method
