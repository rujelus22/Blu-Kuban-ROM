.class public final Lcom/google/android/apps/unveil/history/NoResultsItem;
.super Lcom/google/android/apps/unveil/history/ItemModel;
.source "NoResultsItem.java"


# instance fields
.field final messageId:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/ItemModel;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/apps/unveil/history/NoResultsItem;->messageId:I

    .line 16
    return-void
.end method


# virtual methods
.method public getMessageId()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/apps/unveil/history/NoResultsItem;->messageId:I

    return v0
.end method
