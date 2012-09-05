.class Lcom/google/android/finsky/adapters/SearchAdapter$SuggestionHeaderViewHolder;
.super Ljava/lang/Object;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionHeaderViewHolder"
.end annotation


# instance fields
.field public suggestionLine2:Landroid/widget/TextView;

.field public suggestionLineFull:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/SearchAdapter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter$SuggestionHeaderViewHolder;-><init>()V

    return-void
.end method
