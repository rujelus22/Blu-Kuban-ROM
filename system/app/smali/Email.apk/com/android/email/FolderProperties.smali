.class public Lcom/android/email/FolderProperties;
.super Ljava/lang/Object;
.source "FolderProperties.java"


# static fields
.field private static sInstance:Lcom/android/email/FolderProperties;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMailboxHasChildDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSpecialMailbox:[Ljava/lang/String;

.field private final mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

.field private final mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/android/email/activity/ActivityResourceInterface;->getFolderProperties_mailbox_display_names(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 50
    const-string v1, ""

    iget-object v2, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 53
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 49
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 58
    :cond_29
    invoke-static {p1}, Lcom/android/email/activity/ActivityResourceInterface;->getFolderProperties_mailbox_display_icons(Landroid/content/Context;)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    .line 65
    invoke-static {p1}, Lcom/android/email/activity/ActivityResourceInterface;->getFolderProperties_email_left_icon_folder_favorite(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-static {p1}, Lcom/android/email/activity/ActivityResourceInterface;->getFolderProperties_email_left_icon_inbox(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mMailboxHasChildDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;
    .registers 4
    .parameter

    .prologue
    .line 76
    const-class v1, Lcom/android/email/FolderProperties;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    if-nez v0, :cond_16

    .line 77
    const-class v2, Lcom/android/email/FolderProperties;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 78
    :try_start_a
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    if-nez v0, :cond_15

    .line 79
    new-instance v0, Lcom/android/email/FolderProperties;

    invoke-direct {v0, p0}, Lcom/android/email/FolderProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    .line 81
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 83
    :cond_16
    :try_start_16
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 76
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setInitInstance()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    .line 88
    return-void
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(IJ)Ljava/lang/String;
    .registers 6
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 124
    invoke-static {p1, p2, p3}, Lcom/android/email/activity/ActivityResourceInterface;->getFolderProperties_getDisplayName(IJ)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 133
    .end local v0           #name:Ljava/lang/String;
    :goto_6
    return-object v0

    .line 130
    .restart local v0       #name:Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_11

    .line 131
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_6

    .line 133
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIcon(IJZ)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "type"
    .parameter "mailboxId"
    .parameter "showPlusImage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 147
    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_b

    .line 148
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    :goto_a
    return-object v1

    .line 149
    :cond_b
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-nez v1, :cond_14

    .line 150
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 151
    :cond_14
    const-wide/16 v1, -0x5

    cmp-long v1, p2, v1

    if-nez v1, :cond_22

    .line 152
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 153
    :cond_22
    const-wide/16 v1, -0x6

    cmp-long v1, p2, v1

    if-nez v1, :cond_30

    .line 154
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 156
    :cond_30
    if-ltz p1, :cond_54

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_54

    .line 157
    if-eqz p4, :cond_41

    if-ne p1, v4, :cond_41

    .line 158
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mMailboxHasChildDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 160
    :cond_41
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 161
    .local v0, resId:I
    if-eq v0, v3, :cond_54

    .line 162
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 166
    .end local v0           #resId:I
    :cond_54
    const/16 v1, 0xc

    if-ne p1, v1, :cond_70

    .line 167
    if-eqz p4, :cond_5d

    .line 168
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mMailboxHasChildDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 170
    :cond_5d
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 171
    .restart local v0       #resId:I
    if-eq v0, v3, :cond_70

    .line 172
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a

    .line 176
    .end local v0           #resId:I
    :cond_70
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIconIds(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "type"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 141
    iget-object v0, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/email/FolderProperties;->mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public getSummaryMailboxIconIds(J)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "id"

    .prologue
    .line 97
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method