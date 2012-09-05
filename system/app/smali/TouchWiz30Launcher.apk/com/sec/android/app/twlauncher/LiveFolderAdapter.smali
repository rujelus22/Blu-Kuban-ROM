.class Lcom/sec/android/app/twlauncher/LiveFolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCustomIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsList:Z

.field private final mLauncher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LiveFolderInfo;Landroid/database/Cursor;)V
    .registers 7
    .parameter "launcher"
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    .line 55
    iget v1, p2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    :goto_17
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startManagingCursor(Landroid/database/Cursor;)V

    .line 60
    return-void

    .line 55
    :cond_2b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .parameter "context"
    .parameter "cursor"
    .parameter "holder"

    .prologue
    const/4 v9, -0x1

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 138
    .local v1, data:[B
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    if-eq v8, v9, :cond_d

    .line 139
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 142
    :cond_d
    if-eqz v1, :cond_53

    .line 143
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 144
    .local v5, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v5, :cond_25

    .line 145
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 148
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_25
    if-nez v2, :cond_4a

    .line 149
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4b

    .line 151
    new-instance v2, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_4a
    :goto_4a
    return-object v2

    .line 154
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_4b
    const-string v8, "LiveFOlderAdapter"

    const-string v9, "Failed to decode bitmap data for live folder icon"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 157
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_53
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    if-eq v8, v9, :cond_4a

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    if-eq v8, v9, :cond_4a

    .line 158
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, resource:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 160
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_4a

    .line 162
    :try_start_6b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 163
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 165
    .local v7, resources:Landroid/content/res/Resources;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, id:I
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8e} :catch_8f

    goto :goto_4a

    .line 168
    .end local v3           #id:I
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v7           #resources:Landroid/content/res/Resources;
    :catch_8f
    move-exception v8

    goto :goto_4a
.end method

.method static query(Landroid/content/Context;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Landroid/database/Cursor;
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    .line 97
    .local v2, holder:Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;
    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->idIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    .line 98
    invoke-direct {p0, p2, p3, v2}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 100
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    if-nez v6, :cond_3e

    .line 103
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v3, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_2c
    iget v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    if-eq v5, v11, :cond_77

    .line 125
    :try_start_30
    iget v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;
    :try_end_3d
    .catch Ljava/net/URISyntaxException; {:try_start_30 .. :try_end_3d} :catch_7a

    .line 132
    :goto_3d
    return-void

    .line 105
    :cond_3e
    if-eqz v3, :cond_67

    move v1, v4

    .line 106
    .local v1, hasIcon:Z
    :goto_41
    iget-object v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_69

    move v6, v5

    :goto_46
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    if-eqz v1, :cond_50

    .line 108
    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_50
    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    if-eq v6, v11, :cond_71

    .line 111
    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_6b

    .line 113
    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .end local v0           #description:Ljava/lang/String;
    .end local v1           #hasIcon:Z
    :cond_67
    move v1, v5

    .line 105
    goto :goto_41

    .restart local v1       #hasIcon:Z
    :cond_69
    move v6, v7

    .line 106
    goto :goto_46

    .line 116
    .restart local v0       #description:Ljava/lang/String;
    :cond_6b
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 119
    .end local v0           #description:Ljava/lang/String;
    :cond_71
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 130
    .end local v1           #hasIcon:Z
    :cond_77
    iput-boolean v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    goto :goto_3d

    .line 126
    :catch_7a
    move-exception v4

    goto :goto_3d
.end method

.method cleanup()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 179
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_b

    .line 181
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1b
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 183
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 184
    .local v4, icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 185
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2a

    .line 186
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_2a

    .line 189
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_42
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_55

    .line 193
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_55
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;-><init>()V

    .line 71
    .local v0, holder:Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    if-nez v2, :cond_5a

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, view:Landroid/view/View;
    :goto_13
    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 81
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->idIndex:I

    .line 82
    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    .line 83
    const-string v2, "description"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 84
    const-string v2, "intent"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 85
    const-string v2, "icon_bitmap"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 86
    const-string v2, "icon_resource"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 87
    const-string v2, "icon_package"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    return-object v1

    .line 74
    .end local v1           #view:Landroid/view/View;
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .restart local v1       #view:Landroid/view/View;
    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_13
.end method
