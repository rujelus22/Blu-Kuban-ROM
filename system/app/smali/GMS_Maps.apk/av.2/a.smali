.class public Lav/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const v0, 0x7f04016d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lav/a;->a:Landroid/view/View;

    return-void
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_52

    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_4d

    const v0, 0x7f020081

    :goto_14
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_18
    return-object v0

    .line 52
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_2f

    const v0, 0x7f02003b

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_18

    :cond_2f
    const v0, 0x7f02003a

    goto :goto_2a

    .line 55
    :pswitch_33
    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_49

    const v0, 0x7f02003d

    :goto_44
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_18

    :cond_49
    const v0, 0x7f02003c

    goto :goto_44

    .line 58
    :cond_4d
    const v0, 0x7f020080

    goto :goto_14

    .line 50
    nop

    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_19
        :pswitch_33
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    sparse-switch p0, :sswitch_data_8c

    .line 171
    :goto_4
    return-object v0

    .line 114
    :sswitch_5
    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 117
    :sswitch_c
    const/16 v0, 0x2cd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 120
    :sswitch_13
    const/16 v0, 0x38b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 123
    :sswitch_1a
    const/16 v0, 0xef

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 126
    :sswitch_21
    const/16 v0, 0x1c8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 129
    :sswitch_28
    const/16 v0, 0x2fc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 132
    :sswitch_2f
    const/16 v0, 0x23d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 135
    :sswitch_36
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 138
    :sswitch_3d
    const/16 v0, 0x350

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 141
    :sswitch_44
    const/16 v0, 0x355

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 144
    :sswitch_4b
    const/16 v0, 0x139

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 147
    :sswitch_52
    const/16 v0, 0x2e5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 150
    :sswitch_59
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 153
    :sswitch_60
    const/16 v0, 0x49f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 156
    :sswitch_67
    const/16 v0, 0x4b5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 159
    :sswitch_6e
    const/16 v0, 0x527

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 162
    :sswitch_75
    const/16 v0, 0x1e6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 165
    :sswitch_7c
    const/16 v0, 0x3e3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 168
    :sswitch_83
    const/16 v0, 0x30d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 112
    nop

    :sswitch_data_8c
    .sparse-switch
        0x7f100078 -> :sswitch_59
        0x7f100304 -> :sswitch_83
        0x7f1004af -> :sswitch_1a
        0x7f1004b2 -> :sswitch_5
        0x7f1004c4 -> :sswitch_21
        0x7f1004cd -> :sswitch_75
        0x7f1004d4 -> :sswitch_36
        0x7f1004d5 -> :sswitch_3d
        0x7f1004d6 -> :sswitch_44
        0x7f1004d7 -> :sswitch_6e
        0x7f1004d8 -> :sswitch_13
        0x7f1004d9 -> :sswitch_2f
        0x7f1004da -> :sswitch_7c
        0x7f1004db -> :sswitch_28
        0x7f1004dc -> :sswitch_c
        0x7f1004dd -> :sswitch_4b
        0x7f1004de -> :sswitch_52
        0x7f1004e7 -> :sswitch_60
        0x7f1004e8 -> :sswitch_67
    .end sparse-switch
.end method

.method public static a(Landroid/view/Menu;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 89
    invoke-interface {p0, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 91
    const v3, 0x102002c

    if-ne v2, v3, :cond_15

    .line 100
    :cond_14
    return-void

    .line 96
    :cond_15
    invoke-static {v2}, Lav/a;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/view/MenuItem;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 69
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 178
    if-eqz p0, :cond_2f

    .line 179
    invoke-static {p0}, Lav/a;->c(Landroid/view/MenuItem;)I

    move-result v0

    .line 180
    if-lez v0, :cond_2f

    .line 181
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a=s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2f
    return-void
.end method

.method public static b(Landroid/view/Menu;)V
    .registers 1
    .parameter

    .prologue
    .line 247
    return-void
.end method

.method public static b(Landroid/view/MenuItem;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    sget-object v0, Lav/a;->a:Landroid/view/View;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 77
    return-void
.end method

.method private static c(Landroid/view/MenuItem;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 194
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 195
    const/4 v1, -0x1

    .line 196
    sparse-switch v2, :sswitch_data_28

    move v0, v1

    .line 234
    :goto_a
    :sswitch_a
    return v0

    .line 198
    :sswitch_b
    const/4 v0, 0x1

    .line 199
    goto :goto_a

    .line 207
    :sswitch_d
    const/16 v0, 0x11

    .line 208
    goto :goto_a

    .line 210
    :sswitch_10
    const/16 v0, 0xe

    .line 211
    goto :goto_a

    .line 213
    :sswitch_13
    const/16 v0, 0x2e

    .line 214
    goto :goto_a

    .line 216
    :sswitch_16
    const/4 v0, 0x5

    .line 217
    goto :goto_a

    .line 219
    :sswitch_18
    const/16 v0, 0x43

    .line 220
    goto :goto_a

    .line 222
    :sswitch_1b
    const/16 v0, 0x44

    .line 223
    goto :goto_a

    .line 225
    :sswitch_1e
    const/16 v0, 0x2f

    .line 226
    goto :goto_a

    .line 228
    :sswitch_21
    const/16 v0, 0x34

    .line 229
    goto :goto_a

    .line 231
    :sswitch_24
    const/16 v0, 0x13

    goto :goto_a

    .line 196
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f1004af -> :sswitch_a
        0x7f1004b2 -> :sswitch_b
        0x7f1004c4 -> :sswitch_a
        0x7f1004cd -> :sswitch_24
        0x7f1004d4 -> :sswitch_16
        0x7f1004d5 -> :sswitch_18
        0x7f1004d6 -> :sswitch_1b
        0x7f1004d7 -> :sswitch_21
        0x7f1004d8 -> :sswitch_10
        0x7f1004d9 -> :sswitch_13
        0x7f1004dc -> :sswitch_d
        0x7f1004dd -> :sswitch_1e
    .end sparse-switch
.end method
