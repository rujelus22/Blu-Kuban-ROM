.class public Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;
.super Landroid/database/CursorWrapper;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorWithCounts"
.end annotation


# instance fields
.field private final mAccountCount:I

.field private final mMessageCount:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .registers 4
    .parameter "cursor"
    .parameter "accountCount"
    .parameter "messageCount"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 85
    iput p2, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mAccountCount:I

    .line 86
    iput p3, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mMessageCount:I

    .line 87
    return-void
.end method


# virtual methods
.method public getAccountCount()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mAccountCount:I

    return v0
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mMessageCount:I

    return v0
.end method
