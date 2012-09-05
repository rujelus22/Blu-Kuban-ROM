.class public Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
.super Lcom/android/email/activity/IconListAdapter$IconListItem;
.source "AddAttachmentSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AddAttachmentSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 4
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 224
    iput p3, p0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->mCommand:I

    .line 225
    return-void
.end method


# virtual methods
.method public getCommand()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->mCommand:I

    return v0
.end method
