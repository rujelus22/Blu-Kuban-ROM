.class Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 112
    iput-object p1, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 117
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 118
    .local v1, label:Ljava/lang/CharSequence;
    if-lez p3, :cond_20

    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0065

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 120
    .local v2, text:Ljava/lang/CharSequence;
    :goto_16
    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 121
    return-void

    .line 118
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_20
    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0066

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_16
.end method
