.class LPt;
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
        "Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;",
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
    .line 619
    iput-object p1, p0, LPt;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 622
    invoke-static {p1}, LPU;->a(Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;)V

    .line 624
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 619
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;

    invoke-virtual {p0, p1}, LPt;->a(Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;)V

    return-void
.end method
