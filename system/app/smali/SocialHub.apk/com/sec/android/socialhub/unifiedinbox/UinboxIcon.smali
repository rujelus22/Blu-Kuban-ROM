.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;
.super Ljava/lang/Object;
.source "UinboxIcon.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "ctx"
    .parameter "iISP"
    .parameter "presence"

    .prologue
    const/4 v1, 0x7

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, d:Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_9c

    .line 254
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    :goto_10
    return-object v0

    .line 212
    :pswitch_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    goto :goto_10

    .line 216
    :pswitch_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    goto :goto_10

    .line 220
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    goto :goto_10

    .line 224
    :pswitch_35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    goto :goto_10

    .line 228
    :pswitch_41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    goto :goto_10

    .line 232
    :pswitch_4d
    if-ne p2, v1, :cond_5b

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10

    .line 235
    :cond_5b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    goto :goto_10

    .line 239
    :pswitch_67
    if-ne p2, v1, :cond_75

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10

    .line 242
    :cond_75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    goto :goto_10

    .line 246
    :pswitch_81
    if-ne p2, v1, :cond_8f

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10

    .line 249
    :cond_8f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    goto/16 :goto_10

    .line 210
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
        :pswitch_29
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_35
        :pswitch_41
        :pswitch_5
        :pswitch_5
        :pswitch_4d
        :pswitch_67
        :pswitch_81
    .end packed-switch
.end method

.method public static getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "ctx"
    .parameter "i"

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_52

    .line 166
    :pswitch_3
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 150
    :pswitch_b
    invoke-static {}, Lcom/sec/android/socialhub/util/SocialHubUtil;->isGermanModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 152
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 156
    :cond_1a
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 158
    :pswitch_22
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 159
    :pswitch_2a
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 160
    :pswitch_32
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 161
    :pswitch_3a
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 162
    :pswitch_42
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 163
    :pswitch_4a
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 147
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_b
        :pswitch_22
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_32
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3a
        :pswitch_4a
        :pswitch_42
    .end packed-switch
.end method

.method public static getMessageIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public static getSnsIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "context"
    .parameter "type"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 175
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v1, :cond_15

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getImageResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :goto_14
    return-object v0

    .line 181
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_14
.end method

.method public static getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "account"
    .parameter "app"

    .prologue
    const/16 v0, 0xa

    .line 41
    const-string v1, "4_SevenIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 43
    const-string v1, "gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    const/16 v0, 0xb

    .line 81
    :cond_14
    :goto_14
    return v0

    .line 47
    :cond_15
    const-string v1, "msn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 49
    const/16 v0, 0xc

    goto :goto_14

    .line 51
    :cond_20
    const-string v1, "yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 53
    const/16 v0, 0xd

    goto :goto_14

    .line 60
    :cond_2b
    const-string v1, "gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 62
    const/4 v0, 0x1

    goto :goto_14

    .line 64
    :cond_35
    const-string v1, "msn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 66
    const/4 v0, 0x2

    goto :goto_14

    .line 68
    :cond_3f
    const-string v1, "yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 70
    const/4 v0, 0x3

    goto :goto_14

    .line 72
    :cond_49
    const-string v1, "work"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 74
    const/4 v0, 0x7

    goto :goto_14

    .line 76
    :cond_53
    const-string v1, "eas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 78
    const/16 v0, 0x8

    goto :goto_14
.end method
