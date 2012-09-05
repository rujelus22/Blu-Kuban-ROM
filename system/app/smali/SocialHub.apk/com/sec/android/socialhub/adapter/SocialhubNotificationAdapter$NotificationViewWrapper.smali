.class public Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
.super Ljava/lang/Object;
.source "SocialhubNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationViewWrapper"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public mbUnread:Z

.field public miSP:I

.field public mstrContent:Ljava/lang/String;

.field public mstrName:Ljava/lang/String;

.field public mstrNotiID:Ljava/lang/String;

.field public mstrOwnerID:Ljava/lang/String;

.field public mstrOwnerName:Ljava/lang/String;

.field public mstrOwnerPhoto:Ljava/lang/String;

.field public mstrRelContent:Ljava/lang/String;

.field public mstrRelHref:Ljava/lang/String;

.field public mstrRelID:Ljava/lang/String;

.field public mstrRelType:Ljava/lang/String;

.field public mstrTime:Ljava/lang/String;

.field public mstrTypeIconURL:Ljava/lang/String;

.field public viewImageIcon:Landroid/widget/ImageView;

.field public viewImageOwner:Landroid/widget/ImageView;

.field public viewTextContent:Landroid/widget/TextView;

.field public viewTextTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 184
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notification_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "related_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "related_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "related_content"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "related_href"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "owner_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "owner_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "type_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->miSP:I

    .line 139
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrNotiID:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrName:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrContent:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelType:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelContent:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelHref:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelID:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerID:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerName:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerPhoto:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTime:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mbUnread:Z

    .line 151
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTypeIconURL:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    .line 154
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextContent:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextTime:Landroid/widget/TextView;

    .line 156
    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageIcon:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f0b00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextContent:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0b00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextTime:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0b00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageIcon:Landroid/widget/ImageView;

    .line 164
    return-void
.end method


# virtual methods
.method public changeData(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->miSP:I

    .line 169
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrNotiID:Ljava/lang/String;

    .line 170
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrName:Ljava/lang/String;

    .line 171
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrContent:Ljava/lang/String;

    .line 172
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelType:Ljava/lang/String;

    .line 173
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelContent:Ljava/lang/String;

    .line 174
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelHref:Ljava/lang/String;

    .line 175
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelID:Ljava/lang/String;

    .line 176
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerID:Ljava/lang/String;

    .line 177
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerName:Ljava/lang/String;

    .line 178
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerPhoto:Ljava/lang/String;

    .line 179
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTime:Ljava/lang/String;

    .line 180
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_62

    const/4 v0, 0x0

    :cond_62
    iput-boolean v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mbUnread:Z

    .line 181
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTypeIconURL:Ljava/lang/String;

    .line 182
    return-void
.end method
