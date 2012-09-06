.class public LQz;
.super Landroid/widget/BaseAdapter;
.source "SharingListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final a:I

.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:LPm;

.field private final a:Landroid/content/Context;

.field private final a:Landroid/view/LayoutInflater;

.field private final a:Landroid/widget/SectionIndexer;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, LQB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQB;-><init>(LQA;)V

    sput-object v0, LQz;->a:Ljava/util/Comparator;

    .line 77
    sget v0, LcR;->ic_contact_list_picture:I

    sput v0, LQz;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;LPm;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "LQC;",
            ">;",
            "LPm;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    iput-object p1, p0, LQz;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, LQz;->a:Ljava/util/List;

    .line 95
    iput-object p3, p0, LQz;->a:LPm;

    .line 96
    iput-object p4, p0, LQz;->a:Ljava/lang/String;

    .line 97
    iput-boolean p5, p0, LQz;->a:Z

    .line 98
    if-eqz p4, :cond_24

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, LQz;->b:Z

    .line 99
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, LQz;->a:Landroid/view/LayoutInflater;

    .line 100
    new-instance v0, LQG;

    invoke-direct {v0, p2}, LQG;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LQz;->a:Landroid/widget/SectionIndexer;

    .line 101
    return-void

    .line 98
    :cond_24
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 114
    sget v0, LcS;->share_user_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    sget v0, LcS;->sharing_option:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v0, LcS;->sharing_option:I

    iget-object v3, p0, LQz;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, LQz;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 117
    sget v0, LcS;->share_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    iget-boolean v3, p0, LQz;->a:Z

    if-eqz v3, :cond_29

    move v1, v2

    :cond_29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    sget v1, LcR;->ic_btn_round_more:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-direct {p0, p1, v2}, LQz;->a(Landroid/view/View;Z)V

    .line 121
    return-object p1
.end method

.method private a(Landroid/view/View;I)Landroid/view/View;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 125
    sget v0, LcS;->share_user_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    sget v0, LcS;->sharing_option:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, LQz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 128
    invoke-virtual {v0}, LQC;->a()LPh;

    move-result-object v5

    .line 129
    invoke-interface {v5}, LPh;->a()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {v5}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 133
    sget v6, LcS;->share_name:I

    invoke-direct {p0, p1, v6, v1}, LQz;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 142
    :goto_34
    sget v6, LcS;->share_email:I

    if-eqz v2, :cond_b3

    move-object v1, v2

    :goto_39
    invoke-direct {p0, p1, v6, v1}, LQz;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 144
    iget-boolean v1, p0, LQz;->b:Z

    if-eqz v1, :cond_b6

    .line 145
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldw;

    move-result-object v1

    invoke-direct {p0, p2, p1, v1}, LQz;->a(ILandroid/view/View;Ldw;)V

    .line 150
    :goto_4b
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v6

    .line 151
    sget v0, LcS;->share_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    sget-object v1, Ldw;->a:Ldw;

    if-eq v6, v1, :cond_ba

    move v1, v3

    :goto_60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    sget-object v1, Ldw;->e:Ldw;

    if-ne v6, v1, :cond_bc

    sget v1, LcR;->ic_btn_round_plus:I

    :goto_69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    sget v0, LcS;->share_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    instance-of v1, v0, Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_bf

    .line 157
    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 158
    sget v1, LQz;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 162
    :cond_87
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setMode(I)V

    .line 163
    iget-object v1, p0, LQz;->a:LPm;

    invoke-interface {v5}, LPh;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LPm;->a(Landroid/widget/ImageView;J)V

    .line 167
    :goto_94
    return-object p1

    .line 134
    :cond_95
    if-eqz v2, :cond_ab

    .line 135
    const/16 v1, 0x40

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 136
    if-lez v1, :cond_a9

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_a3
    sget v6, LcS;->share_name:I

    invoke-direct {p0, p1, v6, v1}, LQz;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_34

    :cond_a9
    move-object v1, v2

    .line 136
    goto :goto_a3

    .line 139
    :cond_ab
    const-string v1, "SharingListAdapter"

    const-string v6, "Both display name and email of the contact are null."

    invoke-static {v1, v6}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 142
    :cond_b3
    const-string v1, ""

    goto :goto_39

    .line 147
    :cond_b6
    invoke-direct {p0, p1, v3}, LQz;->a(Landroid/view/View;Z)V

    goto :goto_4b

    :cond_ba
    move v1, v4

    .line 152
    goto :goto_60

    .line 153
    :cond_bc
    sget v1, LcR;->ic_btn_round_more:I

    goto :goto_69

    .line 165
    :cond_bf
    const-string v0, "SharingListAdapter"

    const-string v1, "Unable to find badge view for the contact."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 195
    if-nez p1, :cond_b

    .line 196
    iget-object v0, p0, LQz;->a:Landroid/view/LayoutInflater;

    sget v1, LcU;->sharing_entry_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 200
    :cond_b
    return-object p1
.end method

.method public static a()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, LQz;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method private a(ILandroid/view/View;Ldw;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, LQz;->a(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 228
    sget v0, LcS;->sharing_group_title:I

    iget-object v1, p0, LQz;->a:Landroid/content/Context;

    invoke-virtual {p3, v1}, Ldw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, LQz;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, LQz;->a(Landroid/view/View;Z)V

    .line 233
    :goto_15
    return-void

    .line 231
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, LQz;->a(Landroid/view/View;Z)V

    goto :goto_15
.end method

.method private a(Landroid/view/View;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 206
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_d
    return-void

    .line 208
    :cond_e
    const-string v0, "SharingListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text view not found ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private a(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 218
    sget v0, LcS;->sharing_group_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_12

    .line 220
    if-eqz p2, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_e
    return-void

    .line 220
    :cond_f
    const/16 v0, 0x8

    goto :goto_b

    .line 222
    :cond_12
    const-string v0, "SharingListAdapter"

    const-string v1, "Unable to find header view."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private a(I)Z
    .registers 5
    .parameter

    .prologue
    .line 213
    if-eqz p1, :cond_28

    iget-object v0, p0, LQz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v1

    iget-object v0, p0, LQz;->a:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v0

    if-ne v1, v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, LQz;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, LQz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, LQz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 177
    iget-boolean v0, p0, LQz;->b:Z

    if-eqz v0, :cond_13

    .line 178
    if-nez p1, :cond_8

    const/4 v0, 0x0

    .line 180
    :goto_7
    return-object v0

    .line 178
    :cond_8
    iget-object v0, p0, LQz;->a:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    goto :goto_7

    .line 180
    :cond_13
    iget-object v0, p0, LQz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, LQz;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, LQz;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, LQz;->a:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p2, p3}, LQz;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    iget-boolean v1, p0, LQz;->b:Z

    if-eqz v1, :cond_16

    .line 107
    if-nez p1, :cond_f

    invoke-direct {p0, v0}, LQz;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 109
    :goto_e
    return-object v0

    .line 107
    :cond_f
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v0, v1}, LQz;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 109
    :cond_16
    invoke-direct {p0, v0, p1}, LQz;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method
