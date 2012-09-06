.class Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;
.super Landroid/database/CursorWrapper;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetCursor"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mMailboxName:Ljava/lang/String;

.field private final mMessageCount:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "messageCount"
    .parameter "accountName"
    .parameter "mailboxName"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 79
    iput p2, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMessageCount:I

    .line 80
    iput-object p3, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mAccountName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMailboxName:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMailboxName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMessageCount:I

    return v0
.end method
