.class Lcom/google/android/apps/reader/widget/ItemContextMenu;
.super Ljava/lang/Object;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;,
        Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;,
        Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;,
        Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;,
        Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;,
        Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "WebViewContextMenu"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    return-void
.end method

.method private bindImageContextMenuGroup(Landroid/view/ContextMenu;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    const v0, 0x7f0b007f

    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 182
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    move v0, v3

    .line 183
    :goto_f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v3

    .line 184
    :goto_16
    if-eqz v1, :cond_6e

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    move v2, v3

    .line 185
    :goto_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_70

    :cond_23
    move v0, v3

    .line 186
    :goto_24
    if-eqz v2, :cond_72

    move-object v1, p5

    :goto_27
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    const v1, 0x7f0b0080

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 188
    const v2, 0x7f0b0081

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 189
    const v3, 0x7f0b0082

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 190
    const v4, 0x7f0b0083

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 191
    new-instance v5, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;

    invoke-direct {v5, p2, p3}, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 192
    new-instance v1, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 194
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    new-instance v0, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/reader/widget/ItemContextMenu$CopyListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 196
    new-instance v0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 197
    return-void

    :cond_6a
    move v0, v4

    .line 182
    goto :goto_f

    :cond_6c
    move v1, v4

    .line 183
    goto :goto_16

    :cond_6e
    move v2, v4

    .line 184
    goto :goto_1f

    :cond_70
    move v0, v4

    .line 185
    goto :goto_24

    :cond_72
    move-object v1, p3

    .line 186
    goto :goto_27
.end method

.method private bindLinkContextMenuGroup(Landroid/view/ContextMenu;Landroid/webkit/WebView;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 169
    const v0, 0x7f0b007b

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 170
    const v0, 0x7f0b007c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    const v1, 0x7f0b007e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 172
    const v2, 0x7f0b007d

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 173
    new-instance v3, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;

    invoke-direct {v3, p2}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;-><init>(Landroid/webkit/WebView;)V

    .line 174
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 175
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 177
    return-void
.end method

.method private static findImageAttributes(Landroid/webkit/WebView;Ljava/lang/String;)Lorg/xml/sax/Attributes;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 80
    const-string v1, "htmlUri"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 81
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_37

    move-result-object v0

    .line 83
    :try_start_1a
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_2f

    .line 84
    :try_start_21
    const-string v0, "UTF-8"

    const-string v2, "img"

    const-string v3, "src"

    invoke-static {v1, v0, v2, v3, p1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->findAttributes(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/Attributes;
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_41

    move-result-object v0

    .line 87
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 91
    :goto_2e
    return-object v0

    .line 87
    :catchall_2f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_37

    .line 89
    :catch_37
    move-exception v0

    .line 90
    const-string v1, "WebViewContextMenu"

    const-string v2, "onCreateContextMenu: Failed to read HTML"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v0, 0x0

    goto :goto_2e

    .line 87
    :catchall_41
    move-exception v0

    goto :goto_33
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    instance-of v1, p2, Landroid/webkit/WebView;

    if-eqz v1, :cond_e

    .line 124
    move-object v0, p2

    check-cast v0, Landroid/webkit/WebView;

    move-object v1, v0

    .line 125
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 126
    if-nez v2, :cond_f

    .line 166
    :cond_e
    :goto_e
    return-void

    .line 129
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 130
    new-instance v4, Landroid/view/MenuInflater;

    invoke-direct {v4, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 131
    const v5, 0x7f100007

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 133
    packed-switch v4, :pswitch_data_6a

    .line 144
    :cond_25
    :goto_25
    packed-switch v4, :pswitch_data_72

    :pswitch_28
    goto :goto_e

    .line 147
    :pswitch_29
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 148
    if-nez v4, :cond_49

    .line 149
    const-string v1, "WebViewContextMenu"

    const-string v2, "onCreateContextMenu: HitTestResult extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 136
    :pswitch_37
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    .line 137
    if-eqz v5, :cond_45

    const-string v6, "content:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 141
    :cond_45
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/reader/widget/ItemContextMenu;->bindLinkContextMenuGroup(Landroid/view/ContextMenu;Landroid/webkit/WebView;)V

    goto :goto_25

    .line 152
    :cond_49
    invoke-static {v1, v4}, Lcom/google/android/apps/reader/widget/ItemContextMenu;->findImageAttributes(Landroid/webkit/WebView;Ljava/lang/String;)Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_61

    .line 156
    const-string v2, "title"

    invoke-interface {v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    const-string v2, "alt"

    invoke-interface {v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 162
    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/reader/widget/ItemContextMenu;->bindImageContextMenuGroup(Landroid/view/ContextMenu;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 159
    :cond_61
    const-string v1, "WebViewContextMenu"

    const-string v2, "onCreateContextMenu: Attributes not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 133
    nop

    :pswitch_data_6a
    .packed-switch 0x7
        :pswitch_37
        :pswitch_37
    .end packed-switch

    .line 144
    :pswitch_data_72
    .packed-switch 0x5
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 99
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_23

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    move-object v1, v0

    .line 101
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    :pswitch_14
    move v1, v3

    .line 115
    :goto_15
    return v1

    .line 105
    :pswitch_16
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 107
    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    move v1, v3

    .line 109
    goto :goto_15

    :cond_23
    move v1, v3

    .line 115
    goto :goto_15

    .line 102
    nop

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
