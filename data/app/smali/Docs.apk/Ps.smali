.class LPs;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LPr;


# direct methods
.method constructor <init>(LPr;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, LPs;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    invoke-static {p1}, LPP;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    .line 552
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-virtual {p0, p1}, LPs;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    return-void
.end method
