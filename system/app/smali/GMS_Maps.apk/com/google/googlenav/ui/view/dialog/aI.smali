.class public Lcom/google/googlenav/ui/view/dialog/ai;
.super Lcom/google/googlenav/ui/view/android/bb;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static b:LY/c;

.field private static final i:Ljava/util/List;


# instance fields
.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:[Ljava/lang/CharSequence;

.field private f:[Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 52
    const v0, 0x7f1001ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f1001ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1001ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1001ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1001f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    const v0, 0x7f0f001d

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->setCancelable(Z)V

    .line 62
    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/dialog/ai;
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ai;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/ai;-><init>(Landroid/content/Context;)V

    .line 114
    const/16 v0, 0x42d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->c:Ljava/lang/CharSequence;

    .line 115
    const/16 v0, 0x42c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->d:Ljava/lang/CharSequence;

    .line 116
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    .line 117
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    .line 118
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "26-30"

    aput-object v2, v0, v3

    .line 119
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x42b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 120
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "21-25"

    aput-object v2, v0, v4

    .line 121
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x42a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 122
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "16-20"

    aput-object v2, v0, v5

    .line 123
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x429

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 124
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "11-15"

    aput-object v2, v0, v6

    .line 125
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x428

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 126
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "0-10"

    aput-object v2, v0, v7

    .line 127
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x427

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 128
    const/16 v0, 0x426

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->h:Ljava/lang/CharSequence;

    .line 129
    return-object v1
.end method

.method public static a(LY/c;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    :goto_6
    return-void

    .line 166
    :cond_7
    sput-object p0, Lcom/google/googlenav/ui/view/dialog/ai;->b:LY/c;

    .line 167
    new-instance v0, LY/b;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/dialog/ak;-><init>()V

    invoke-direct {v0, p0, v1}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    goto :goto_6
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p2, :cond_6

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_5
    return-void

    .line 68
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method static synthetic a(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 33
    sput-boolean p0, Lcom/google/googlenav/ui/view/dialog/ai;->a:Z

    return p0
.end method

.method public static b()Lcom/google/googlenav/ui/view/dialog/ai;
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ai;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/ai;-><init>(Landroid/content/Context;)V

    .line 138
    const/16 v0, 0x424

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->c:Ljava/lang/CharSequence;

    .line 139
    const/16 v0, 0x422

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->d:Ljava/lang/CharSequence;

    .line 140
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    .line 141
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    .line 142
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "    0"

    aput-object v2, v0, v3

    .line 143
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x41e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 144
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "    1"

    aput-object v2, v0, v4

    .line 145
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x41f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 146
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "    2"

    aput-object v2, v0, v5

    .line 147
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x420

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 148
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    const-string v2, "    3"

    aput-object v2, v0, v6

    .line 149
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    const/16 v2, 0x421

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 150
    const/16 v0, 0x423

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->g:Ljava/lang/CharSequence;

    .line 151
    const/16 v0, 0x41d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/ai;->h:Ljava/lang/CharSequence;

    .line 152
    return-object v1
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 180
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_7
    return v0

    :cond_8
    sget-boolean v0, Lcom/google/googlenav/ui/view/dialog/ai;->a:Z

    goto :goto_7
.end method

.method public static d()V
    .registers 3

    .prologue
    .line 192
    sget-boolean v0, Lcom/google/googlenav/ui/view/dialog/ai;->a:Z

    if-nez v0, :cond_1a

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/ui/view/dialog/ai;->a:Z

    .line 194
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->b:LY/c;

    if-eqz v0, :cond_1a

    .line 195
    new-instance v0, LY/b;

    sget-object v1, Lcom/google/googlenav/ui/view/dialog/ai;->b:LY/c;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/al;

    invoke-direct {v2}, Lcom/google/googlenav/ui/view/dialog/al;-><init>()V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 203
    :cond_1a
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/dialog/ai;->requestWindowFeature(I)Z

    .line 76
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->setContentView(I)V

    .line 77
    const v0, 0x7f1001ea

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 79
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_1e
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->c:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ai;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f1001eb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->d:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ai;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    move v2, v3

    .line 84
    :goto_32
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7c

    .line 85
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ai;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 86
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    if-nez v1, :cond_61

    .line 87
    :cond_58
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 84
    :goto_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    .line 89
    :cond_61
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/ai;->e:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->f:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 96
    :cond_7c
    const v0, 0x7f1001f1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->g:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/ai;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ai;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aj;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aj;-><init>(Lcom/google/googlenav/ui/view/dialog/ai;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method
