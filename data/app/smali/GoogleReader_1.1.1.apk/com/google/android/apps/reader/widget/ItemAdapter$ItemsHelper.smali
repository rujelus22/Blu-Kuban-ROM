.class Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;
.super Lcom/google/android/apps/reader/widget/BaseItemsAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemsHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/widget/ItemAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/widget/ItemAdapter;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->this$0:Lcom/google/android/apps/reader/widget/ItemAdapter;

    .line 218
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;-><init>(Landroid/content/Context;)V

    .line 219
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
