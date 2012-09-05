.class public Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;
.super Ljava/lang/Object;
.source "EmailLogCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/EmailLogCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdxData"
.end annotation


# instance fields
.field idx:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/EmailLogCursor$IdxData;->idx:I

    .line 80
    return-void
.end method
