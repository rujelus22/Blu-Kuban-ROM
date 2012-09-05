.class public Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;
.super Lcom/android/email/activity/IconListAdapter$IconListItem;
.source "AddTextSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AddTextSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddTextListItem"
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
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 157
    iput p3, p0, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;->mCommand:I

    .line 158
    return-void
.end method


# virtual methods
.method public getCommand()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/email/activity/AddTextSelectorAdapter$AddTextListItem;->mCommand:I

    return v0
.end method
