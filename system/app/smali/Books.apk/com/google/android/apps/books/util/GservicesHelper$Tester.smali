.class final Lcom/google/android/apps/books/util/GservicesHelper$Tester;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/GservicesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tester"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mContext:Landroid/content/Context;

    .line 144
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/books/util/GservicesHelper$Tester;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
