.class public Lcom/anddoes/launcher/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/de;


# static fields
.field public static c:Landroid/graphics/drawable/Drawable;

.field private static g:Z


# instance fields
.field a:Lcom/anddoes/launcher/Folder;

.field b:Lcom/anddoes/launcher/dd;

.field d:Lcom/anddoes/launcher/cx;

.field e:Z

.field private f:Lcom/anddoes/launcher/Launcher;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/anddoes/launcher/BubbleTextView;

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:Lcom/anddoes/launcher/dc;

.field private t:Lcom/anddoes/launcher/dc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anddoes/launcher/FolderIcon;->g:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/anddoes/launcher/FolderIcon;->c:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->o:I

    .line 97
    iput-boolean v5, p0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    .line 98
    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    move v3, v2

    move v4, v2

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    .line 100
    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    move v3, v2

    move v4, v2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->o:I

    .line 97
    iput-boolean v5, p0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    .line 98
    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    move v3, v2

    move v4, v2

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    .line 100
    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    move v3, v2

    move v4, v2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/FolderIcon;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static a(Lcom/anddoes/launcher/Launcher;Landroid/view/ViewGroup;Lcom/anddoes/launcher/dd;)Lcom/anddoes/launcher/FolderIcon;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 130
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/BubbleTextView;

    iput-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    .line 131
    iget-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    iget-object v2, p2, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, v0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;)V

    .line 133
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, v0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const-string v3, "homescreen_icon_text_color"

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 134
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    .line 136
    const-string v1, "NONE"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 137
    iget-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_4d
    :goto_4d
    const-string v1, "GRID"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 152
    iput v5, v0, Lcom/anddoes/launcher/FolderIcon;->j:I

    .line 157
    :cond_5b
    :goto_5b
    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object p2, v0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    .line 160
    iput-object p0, v0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    .line 161
    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->a()V

    .line 163
    const v1, 0x7f060299

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    .line 162
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p0}, Lcom/anddoes/launcher/Folder;->a(Landroid/content/Context;)Lcom/anddoes/launcher/Folder;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->y()Lcom/anddoes/launcher/bm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/bm;)V

    .line 166
    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/FolderIcon;)V

    .line 167
    invoke-virtual {v1, p2}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/dd;)V

    .line 168
    iput-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    .line 170
    new-instance v1, Lcom/anddoes/launcher/cx;

    invoke-direct {v1, p0, v0}, Lcom/anddoes/launcher/cx;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/FolderIcon;)V

    iput-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    .line 171
    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/dd;->a(Lcom/anddoes/launcher/de;)V

    .line 173
    return-object v0

    .line 138
    :cond_9b
    const-string v1, "SQUARE"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 139
    iget-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4d

    .line 140
    :cond_b0
    const-string v1, "IOS"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 141
    iget-object v1, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4d

    .line 142
    :cond_c5
    const-string v1, "CUSTOM"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 143
    invoke-static {p0}, Lcom/anddoes/launcher/ia;->e(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_4d

    .line 145
    iget-object v2, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_4d

    .line 148
    :cond_de
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v2, v0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    const-string v3, "folder_icon_inner_holo"

    invoke-virtual {v1, v2, v4, v3}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_4d

    .line 153
    :cond_e9
    const-string v1, "IOS"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 154
    const/16 v1, 0x9

    iput v1, v0, Lcom/anddoes/launcher/FolderIcon;->j:I

    goto/16 :goto_5b
.end method

.method private a(ILcom/anddoes/launcher/dc;)Lcom/anddoes/launcher/dc;
    .registers 10
    .parameter
    .parameter

    .prologue
    const v4, 0x3e9eb852

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    const/high16 v1, 0x4000

    .line 705
    const-string v2, "FAN"

    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 706
    const v4, 0x3f333333

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    int-to-float v2, v2

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    int-to-float v3, v3

    iget v6, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    div-float/2addr v6, v1

    sub-float/2addr v3, v6

    int-to-float v6, v2

    sub-float/2addr v3, v6

    div-float/2addr v3, v1

    if-nez p1, :cond_5b

    const v4, 0x3f4ccccd

    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    int-to-float v0, v0

    const v2, 0x3f4ccccd

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    const/high16 v3, 0x4040

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    int-to-float v3, v3

    iget v6, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    div-float/2addr v6, v1

    sub-float/2addr v3, v6

    int-to-float v0, v0

    sub-float v0, v3, v0

    div-float v3, v0, v1

    :goto_52
    if-nez p2, :cond_73

    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    .line 712
    :goto_5a
    return-object v0

    .line 706
    :cond_5b
    const/4 v6, 0x1

    if-ne p1, v6, :cond_61

    const/high16 v2, -0x3f40

    goto :goto_52

    :cond_61
    const/4 v6, 0x2

    if-ne p1, v6, :cond_143

    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    int-to-float v0, v0

    iget v6, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    div-float v1, v6, v1

    sub-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4040

    add-float v2, v0, v1

    goto :goto_52

    :cond_73
    iput v2, p2, Lcom/anddoes/launcher/dc;->a:F

    iput v3, p2, Lcom/anddoes/launcher/dc;->b:F

    iput v4, p2, Lcom/anddoes/launcher/dc;->c:F

    iput v5, p2, Lcom/anddoes/launcher/dc;->d:I

    :goto_7b
    move-object v0, p2

    goto :goto_5a

    .line 707
    :cond_7d
    const-string v2, "GRID"

    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 708
    div-int/lit8 v2, p1, 0x2

    rem-int/lit8 v4, p1, 0x2

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v3

    if-eqz v3, :cond_b0

    :goto_95
    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    mul-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v2, v0, v1

    if-nez p2, :cond_b2

    new-instance v0, Lcom/anddoes/launcher/dc;

    const/high16 v4, 0x3f00

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    goto :goto_5a

    :cond_b0
    move v0, v1

    goto :goto_95

    :cond_b2
    iput v2, p2, Lcom/anddoes/launcher/dc;->a:F

    iput v3, p2, Lcom/anddoes/launcher/dc;->b:F

    const/high16 v0, 0x3f00

    iput v0, p2, Lcom/anddoes/launcher/dc;->c:F

    iput v5, p2, Lcom/anddoes/launcher/dc;->d:I

    goto :goto_7b

    .line 709
    :cond_bd
    const-string v2, "IOS"

    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v3, v3, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 710
    div-int/lit8 v2, p1, 0x3

    rem-int/lit8 v6, p1, 0x3

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v3

    if-eqz v3, :cond_ef

    :goto_d5
    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    mul-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float v2, v0, v1

    if-nez p2, :cond_f1

    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    goto/16 :goto_5a

    :cond_ef
    move v0, v1

    goto :goto_d5

    :cond_f1
    iput v2, p2, Lcom/anddoes/launcher/dc;->a:F

    iput v3, p2, Lcom/anddoes/launcher/dc;->b:F

    iput v4, p2, Lcom/anddoes/launcher/dc;->c:F

    iput v5, p2, Lcom/anddoes/launcher/dc;->d:I

    goto :goto_7b

    .line 712
    :cond_fa
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3eb33333

    sub-float v2, v6, v0

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    sub-float v2, v6, v0

    iget v3, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v4, v6, v1

    iget v5, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    int-to-float v5, v5

    add-float/2addr v3, v2

    add-float/2addr v3, v4

    sub-float v3, v5, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/anddoes/launcher/FolderIcon;->l:F

    mul-float/2addr v4, v1

    const/high16 v1, 0x42a0

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    float-to-int v5, v0

    if-nez p2, :cond_139

    new-instance v0, Lcom/anddoes/launcher/dc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/dc;-><init>(Lcom/anddoes/launcher/FolderIcon;FFFI)V

    goto/16 :goto_5a

    :cond_139
    iput v2, p2, Lcom/anddoes/launcher/dc;->a:F

    iput v3, p2, Lcom/anddoes/launcher/dc;->b:F

    iput v4, p2, Lcom/anddoes/launcher/dc;->c:F

    iput v5, p2, Lcom/anddoes/launcher/dc;->d:I

    goto/16 :goto_7b

    :cond_143
    move v2, v0

    goto/16 :goto_52
.end method

.method private a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 536
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->o:I

    if-eq v0, p2, :cond_4c

    .line 537
    :cond_8
    iput p1, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    .line 538
    iput p2, p0, Lcom/anddoes/launcher/FolderIcon;->o:I

    .line 540
    sget v0, Lcom/anddoes/launcher/cx;->j:I

    .line 541
    sget v1, Lcom/anddoes/launcher/cx;->k:I

    .line 543
    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    .line 545
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v2, 0x3fe66666

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 547
    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    int-to-float v2, v2

    const v3, 0x3f9eb852

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 548
    const/high16 v3, 0x3f80

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->l:F

    .line 550
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    int-to-float v0, v0

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->l:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    .line 551
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->m:I

    int-to-float v0, v0

    const v2, 0x3e75c28f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->r:F

    .line 553
    iget v0, p0, Lcom/anddoes/launcher/FolderIcon;->o:I

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/anddoes/launcher/FolderIcon;->p:I

    .line 554
    iput v1, p0, Lcom/anddoes/launcher/FolderIcon;->q:I

    .line 556
    :cond_4c
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/anddoes/launcher/dc;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    iget v0, p2, Lcom/anddoes/launcher/dc;->a:F

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->p:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/anddoes/launcher/dc;->b:F

    .line 718
    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 717
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 719
    iget v0, p2, Lcom/anddoes/launcher/dc;->c:F

    iget v1, p2, Lcom/anddoes/launcher/dc;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 720
    iget-object v0, p2, Lcom/anddoes/launcher/dc;->e:Landroid/graphics/drawable/Drawable;

    .line 722
    if-eqz v0, :cond_42

    .line 723
    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 724
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 725
    iget v1, p2, Lcom/anddoes/launcher/dc;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 726
    iget v1, p2, Lcom/anddoes/launcher/dc;->d:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 727
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 726
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 729
    :cond_39
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 730
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 731
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 733
    :cond_42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 734
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/FolderIcon;->a(II)V

    .line 560
    return-void
.end method

.method private a(Lcom/anddoes/launcher/kj;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    const/4 v1, -0x1

    iput v1, p1, Lcom/anddoes/launcher/kj;->l:I

    .line 444
    const/4 v1, -0x1

    iput v1, p1, Lcom/anddoes/launcher/kj;->m:I

    .line 451
    if-eqz p2, :cond_111

    .line 452
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    .line 453
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 454
    invoke-virtual {v1, p2, v3}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 456
    if-nez p3, :cond_115

    .line 457
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 458
    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v5

    .line 461
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 462
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/CellLayout;

    .line 461
    invoke-virtual {v5, v2}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;)V

    .line 463
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getScaleX()F

    move-result v2

    .line 464
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getScaleY()F

    move-result v6

    .line 465
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/FolderIcon;->setScaleX(F)V

    .line 466
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/FolderIcon;->setScaleY(F)V

    .line 468
    invoke-virtual {v1, p0, v4}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 471
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/FolderIcon;->setScaleX(F)V

    .line 472
    invoke-virtual {p0, v6}, Lcom/anddoes/launcher/FolderIcon;->setScaleY(F)V

    .line 473
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 474
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/CellLayout;

    .line 473
    invoke-virtual {v5, v2}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/CellLayout;)V

    .line 477
    :goto_59
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 478
    iget v5, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    move/from16 v0, p5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    invoke-direct {p0, v5, v6}, Lcom/anddoes/launcher/FolderIcon;->a(ILcom/anddoes/launcher/dc;)Lcom/anddoes/launcher/dc;

    move-result-object v5

    iput-object v5, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget-object v5, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v6, v5, Lcom/anddoes/launcher/dc;->a:F

    iget v7, p0, Lcom/anddoes/launcher/FolderIcon;->p:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/anddoes/launcher/dc;->a:F

    iget-object v5, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v6, v5, Lcom/anddoes/launcher/dc;->b:F

    iget v7, p0, Lcom/anddoes/launcher/FolderIcon;->q:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/anddoes/launcher/dc;->b:F

    iget-object v5, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v5, v5, Lcom/anddoes/launcher/dc;->a:F

    iget-object v6, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v6, v6, Lcom/anddoes/launcher/dc;->c:F

    iget v7, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v6, v6, Lcom/anddoes/launcher/dc;->b:F

    iget-object v7, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v7, v7, Lcom/anddoes/launcher/dc;->c:F

    iget v8, p0, Lcom/anddoes/launcher/FolderIcon;->k:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v2, v7

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v2, v5

    iget-object v5, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iget v6, v5, Lcom/anddoes/launcher/dc;->c:F

    .line 479
    const/4 v5, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v2, v5

    .line 480
    const/4 v5, 0x1

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v2, v5

    .line 482
    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    aget v2, v2, v7

    .line 483
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    .line 482
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 485
    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    move/from16 v0, p5

    if-ge v0, v2, :cond_10f

    const/high16 v5, 0x3f00

    .line 489
    :goto_eb
    mul-float v6, v6, p4

    .line 490
    const/16 v7, 0x190

    .line 491
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v8, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 492
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v9, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 493
    const/4 v11, 0x0

    move-object v2, p2

    move-object/from16 v10, p6

    .line 488
    invoke-virtual/range {v1 .. v11}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 494
    new-instance v1, Lcom/anddoes/launcher/cu;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/cu;-><init>(Lcom/anddoes/launcher/FolderIcon;Lcom/anddoes/launcher/kj;)V

    .line 498
    const-wide/16 v2, 0x190

    .line 494
    invoke-virtual {p0, v1, v2, v3}, Lcom/anddoes/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    :goto_10e
    return-void

    .line 485
    :cond_10f
    const/4 v5, 0x0

    goto :goto_eb

    .line 500
    :cond_111
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/FolderIcon;->c(Lcom/anddoes/launcher/ec;)V

    goto :goto_10e

    :cond_115
    move-object v4, p3

    goto/16 :goto_59
.end method

.method static synthetic b(Lcom/anddoes/launcher/FolderIcon;)Lcom/anddoes/launcher/BubbleTextView;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/FolderIcon;)Lcom/anddoes/launcher/dc;
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    return-object v0
.end method

.method private d(Lcom/anddoes/launcher/ec;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 370
    iget v1, p1, Lcom/anddoes/launcher/ec;->i:I

    .line 371
    if-eqz v1, :cond_1a

    .line 372
    if-eq v1, v0, :cond_1a

    .line 373
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 374
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->ae:Z

    if-eqz v1, :cond_2a

    .line 375
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 376
    :cond_1a
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    invoke-static {}, Lcom/anddoes/launcher/Folder;->i()Z

    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-boolean v1, v1, Lcom/anddoes/launcher/dd;->a:Z

    if-nez v1, :cond_2a

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    .line 371
    goto :goto_29
.end method

.method static synthetic e()Z
    .registers 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/anddoes/launcher/FolderIcon;->g:Z

    return v0
.end method

.method static synthetic f()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anddoes/launcher/FolderIcon;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 327
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 328
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 329
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 331
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const v2, 0x7f0c0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 332
    const v3, 0x7f0c006a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 333
    const v4, 0x7f0c0069

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 334
    const v5, 0x7f0c006b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 331
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/anddoes/launcher/BubbleTextView;->setPadding(IIII)V

    .line 335
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    .line 336
    new-instance v1, Lcom/anddoes/launcher/cj;

    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v2}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 335
    invoke-virtual {v0, v6, v1, v6, v6}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 338
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 339
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/BubbleTextView;->setVisibility(I)V

    .line 355
    :goto_63
    return-void

    .line 341
    :cond_64
    const-string v0, "NONE"

    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 342
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    :goto_78
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 347
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 348
    const v3, 0x7f0c006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 349
    const v4, 0x7f0c006e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 350
    const v5, 0x7f0c0070

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 347
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/anddoes/launcher/BubbleTextView;->setPadding(IIII)V

    .line 351
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_63

    .line 344
    :cond_bc
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_78
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 9
    .parameter

    .prologue
    .line 506
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_3b

    .line 507
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ae:Z

    if-eqz v0, :cond_30

    .line 508
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 509
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/dd;

    .line 510
    iget-object v1, v0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    .line 513
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/dd;)V

    .line 514
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 529
    :cond_30
    :goto_30
    return-void

    .line 510
    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ec;

    .line 511
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/FolderIcon;->c(Lcom/anddoes/launcher/ec;)V

    goto :goto_20

    .line 520
    :cond_3b
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/y;

    if-eqz v0, :cond_62

    .line 522
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/y;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->a()Lcom/anddoes/launcher/kj;

    move-result-object v1

    .line 526
    :goto_49
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->h()V

    .line 527
    iget-object v2, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-object v0, v0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 528
    iget-object v6, p1, Lcom/anddoes/launcher/cc;->i:Ljava/lang/Runnable;

    move-object v0, p0

    .line 527
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/kj;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    goto :goto_30

    .line 524
    :cond_62
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/kj;

    move-object v1, v0

    goto :goto_49
.end method

.method public final a(Lcom/anddoes/launcher/ec;)V
    .registers 2
    .parameter

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->invalidate()V

    .line 845
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->requestLayout()V

    .line 846
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/kj;Landroid/view/View;Lcom/anddoes/launcher/kj;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .line 414
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 415
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/FolderIcon;->a(II)V

    .line 418
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/kj;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 424
    invoke-direct {p0, v7}, Lcom/anddoes/launcher/FolderIcon;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/FolderIcon;->a(ILcom/anddoes/launcher/dc;)Lcom/anddoes/launcher/dc;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/anddoes/launcher/FolderIcon;->n:I

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    iput-object v7, v3, Lcom/anddoes/launcher/dc;->e:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_6e

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/anddoes/launcher/cv;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/anddoes/launcher/cv;-><init>(Lcom/anddoes/launcher/FolderIcon;FLcom/anddoes/launcher/dc;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/anddoes/launcher/cw;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/cw;-><init>(Lcom/anddoes/launcher/FolderIcon;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 426
    new-instance v0, Lcom/anddoes/launcher/ct;

    invoke-direct {v0, p0, p1}, Lcom/anddoes/launcher/ct;-><init>(Lcom/anddoes/launcher/FolderIcon;Lcom/anddoes/launcher/kj;)V

    .line 430
    const-wide/16 v1, 0x15e

    .line 426
    invoke-virtual {p0, v0, v1, v2}, Lcom/anddoes/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    return-void

    .line 424
    nop

    :array_6e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    .line 854
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f060299

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 855
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 815
    if-eqz p1, :cond_1a

    .line 816
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 818
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-object v1, v1, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :cond_19
    :goto_19
    return-void

    .line 821
    :cond_1a
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 822
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 825
    :cond_2f
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/BubbleTextView;->setVisibility(I)V

    goto :goto_19
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 380
    check-cast p1, Lcom/anddoes/launcher/ec;

    .line 381
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/FolderIcon;->d(Lcom/anddoes/launcher/ec;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/anddoes/launcher/ec;)V
    .registers 2
    .parameter

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->invalidate()V

    .line 850
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->requestLayout()V

    .line 851
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 391
    check-cast p1, Lcom/anddoes/launcher/ec;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/FolderIcon;->d(Lcom/anddoes/launcher/ec;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 403
    :goto_9
    return-void

    .line 394
    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 395
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 397
    :cond_17
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 398
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    .line 399
    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    invoke-virtual {v2, v3, v0}, Lcom/anddoes/launcher/cx;->a(II)V

    .line 400
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/CellLayout;)V

    .line 401
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->a()V

    .line 402
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/CellLayout;->a(Lcom/anddoes/launcher/cx;)V

    goto :goto_9
.end method

.method public final c()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c(Lcom/anddoes/launcher/ec;)V
    .registers 9
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/dd;->a(Lcom/anddoes/launcher/ec;)V

    .line 386
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->f:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-wide v2, v1, Lcom/anddoes/launcher/dd;->h:J

    const/4 v4, 0x0

    .line 387
    iget v5, p1, Lcom/anddoes/launcher/ec;->l:I

    iget v6, p1, Lcom/anddoes/launcher/ec;->m:I

    move-object v1, p1

    .line 386
    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    .line 388
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 434
    check-cast p1, Lcom/anddoes/launcher/ec;

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/FolderIcon;->d(Lcom/anddoes/launcher/ec;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 438
    :goto_8
    return-void

    .line 437
    :cond_9
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->d:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->b()V

    goto :goto_8
.end method

.method public final d()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 831
    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v2}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 832
    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v2}, Lcom/anddoes/launcher/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 834
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 832
    goto :goto_16

    .line 834
    :cond_19
    iget-object v2, p0, Lcom/anddoes/launcher/FolderIcon;->i:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v2}, Lcom/anddoes/launcher/BubbleTextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 738
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 740
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->j()I

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    if-nez v0, :cond_16

    .line 772
    :cond_15
    :goto_15
    return-void

    .line 744
    :cond_16
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Folder;->b(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 749
    iget-boolean v0, p0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    if-eqz v0, :cond_63

    .line 750
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    iget-object v0, v0, Lcom/anddoes/launcher/dc;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/FolderIcon;->a(Landroid/graphics/drawable/Drawable;)V

    .line 757
    :goto_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/FolderIcon;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 758
    iget-boolean v1, p0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    if-nez v1, :cond_73

    .line 759
    iget-object v1, p0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v1}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_15

    .line 760
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_40
    if-ltz v1, :cond_15

    .line 761
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 762
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    .line 764
    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    invoke-direct {p0, v1, v3}, Lcom/anddoes/launcher/FolderIcon;->a(ILcom/anddoes/launcher/dc;)Lcom/anddoes/launcher/dc;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    .line 765
    iget-object v3, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    iput-object v0, v3, Lcom/anddoes/launcher/dc;->e:Landroid/graphics/drawable/Drawable;

    .line 766
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->s:Lcom/anddoes/launcher/dc;

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/FolderIcon;->a(Landroid/graphics/Canvas;Lcom/anddoes/launcher/dc;)V

    .line 760
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_40

    .line 752
    :cond_63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 753
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    .line 754
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/FolderIcon;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 770
    :cond_73
    iget-object v0, p0, Lcom/anddoes/launcher/FolderIcon;->t:Lcom/anddoes/launcher/dc;

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/FolderIcon;->a(Landroid/graphics/Canvas;Lcom/anddoes/launcher/dc;)V

    goto :goto_15
.end method

.method public final k()V
    .registers 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->invalidate()V

    .line 840
    invoke-virtual {p0}, Lcom/anddoes/launcher/FolderIcon;->requestLayout()V

    .line 841
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anddoes/launcher/FolderIcon;->g:Z

    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
