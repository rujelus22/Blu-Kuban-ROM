.class Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;
.super Landroid/database/CursorWrapper;
.source "MailboxFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorWithExtras"
.end annotation


# instance fields
.field public final mChildCount:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;I)V
    .registers 3
    .parameter "cursor"
    .parameter "childCount"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 342
    iput p2, p0, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;->mChildCount:I

    .line 343
    return-void
.end method
