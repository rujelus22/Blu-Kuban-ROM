.class LMP;
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
        "Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LME;


# direct methods
.method constructor <init>(LME;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, LMP;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    invoke-static {p1}, LMY;->a(Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;)V

    .line 612
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    invoke-virtual {p0, p1}, LMP;->a(Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;)V

    return-void
.end method
