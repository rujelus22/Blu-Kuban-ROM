.class public LBm;
.super Ljava/lang/Object;
.source "TextStyle.java"

# interfaces
.implements LBj;


# static fields
.field private static final a:[[I


# instance fields
.field private final a:I

.field private a:LEn;

.field private a:Landroid/content/res/ColorStateList;

.field private final a:Landroid/text/Editable;

.field private a:Ljava/lang/String;

.field private final a:LwH;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v1, [[I

    new-array v1, v1, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    sput-object v0, LBm;->a:[[I

    return-void
.end method

.method public constructor <init>(Lwk;LwH;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, LBm;-><init>(Lwk;LwH;ZLandroid/text/Editable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lwk;LwH;ZLandroid/text/Editable;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, LBm;->b:I

    .line 57
    iput-object v5, p0, LBm;->a:Ljava/lang/String;

    .line 58
    iput-object v5, p0, LBm;->b:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, LBm;->a:Z

    .line 61
    iput-boolean v2, p0, LBm;->b:Z

    .line 63
    const-string v0, "Arial"

    iput-object v0, p0, LBm;->c:Ljava/lang/String;

    .line 65
    iput-object v5, p0, LBm;->a:Landroid/content/res/ColorStateList;

    .line 93
    if-nez p4, :cond_8d

    move v0, v1

    :goto_19
    xor-int/2addr v0, p3

    const-string v3, "The editable can be null if and only if isTextEnd is false."

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 95
    iput-boolean p3, p0, LBm;->c:Z

    .line 96
    iput-object p4, p0, LBm;->a:Landroid/text/Editable;

    .line 97
    iput-object p2, p0, LBm;->a:LwH;

    .line 98
    invoke-interface {p1}, Lwk;->a()Z

    move-result v0

    if-eqz v0, :cond_8f

    :goto_2b
    invoke-interface {p1}, Lwk;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v2, 0x2

    :cond_32
    or-int v0, v1, v2

    iput v0, p0, LBm;->b:I

    .line 101
    invoke-interface {p1}, Lwk;->d()Z

    move-result v0

    iput-boolean v0, p0, LBm;->a:Z

    .line 102
    invoke-interface {p1}, Lwk;->c()Z

    move-result v0

    iput-boolean v0, p0, LBm;->b:Z

    .line 103
    invoke-interface {p1}, Lwk;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 105
    packed-switch v0, :pswitch_data_d8

    .line 113
    sget-object v0, LEn;->a:LEn;

    iput-object v0, p0, LBm;->a:LEn;

    .line 116
    :goto_52
    invoke-interface {p1}, Lwk;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBm;->c:Ljava/lang/String;

    .line 117
    invoke-interface {p1}, Lwk;->a()I

    move-result v0

    iput v0, p0, LBm;->a:I

    .line 119
    invoke-interface {p1}, Lwk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBm;->b:Ljava/lang/String;

    .line 120
    invoke-interface {p1}, Lwk;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBm;->a:Ljava/lang/String;

    .line 122
    iget-object v0, p0, LBm;->b:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 124
    :try_start_6e
    iget-object v0, p0, LBm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_73} :catch_9b

    .line 131
    :cond_73
    :goto_73
    iget-object v0, p0, LBm;->a:Ljava/lang/String;

    if-eqz v0, :cond_8c

    .line 133
    :try_start_77
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, LBm;->a:[[I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, LBm;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, LBm;->a:Landroid/content/res/ColorStateList;
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_8c} :catch_b9

    .line 140
    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    move v0, v2

    .line 93
    goto :goto_19

    :cond_8f
    move v1, v2

    .line 98
    goto :goto_2b

    .line 107
    :pswitch_91
    sget-object v0, LEn;->b:LEn;

    iput-object v0, p0, LBm;->a:LEn;

    goto :goto_52

    .line 110
    :pswitch_96
    sget-object v0, LEn;->c:LEn;

    iput-object v0, p0, LBm;->a:LEn;

    goto :goto_52

    .line 125
    :catch_9b
    move-exception v0

    .line 126
    const-string v1, "TextStyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid background color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LBm;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iput-object v5, p0, LBm;->b:Ljava/lang/String;

    goto :goto_73

    .line 135
    :catch_b9
    move-exception v0

    .line 136
    const-string v1, "TextStyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid foreground color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LBm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iput-object v5, p0, LBm;->a:Ljava/lang/String;

    goto :goto_8c

    .line 105
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_91
        :pswitch_96
    .end packed-switch
.end method

.method static synthetic a(LBm;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LBm;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LBm;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, LBm;->a:Z

    return v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic b(LBm;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, LBm;->b:Z

    return v0
.end method


# virtual methods
.method public a()LEm;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 189
    iget-boolean v0, p0, LBm;->c:Z

    if-eqz v0, :cond_19

    .line 190
    new-instance v0, LAP;

    iget-object v1, p0, LBm;->a:Landroid/text/Editable;

    iget-object v2, p0, LBm;->c:Ljava/lang/String;

    iget v3, p0, LBm;->b:I

    iget v4, p0, LBm;->a:I

    iget-object v5, p0, LBm;->a:Landroid/content/res/ColorStateList;

    iget-object v7, p0, LBm;->a:LEn;

    iget-object v8, p0, LBm;->a:LwH;

    invoke-direct/range {v0 .. v8}, LAP;-><init>(Landroid/text/Editable;Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;LwH;)V

    .line 193
    :goto_18
    return-object v0

    :cond_19
    new-instance v1, LAO;

    iget-object v2, p0, LBm;->c:Ljava/lang/String;

    iget v3, p0, LBm;->b:I

    iget v4, p0, LBm;->a:I

    iget-object v5, p0, LBm;->a:Landroid/content/res/ColorStateList;

    iget-object v7, p0, LBm;->a:LEn;

    iget-object v8, p0, LBm;->a:LwH;

    invoke-direct/range {v1 .. v8}, LAO;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;LwH;)V

    move-object v0, v1

    goto :goto_18
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, LBm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, LBn;

    invoke-direct {v0, p0}, LBn;-><init>(LBm;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 203
    iget v0, p0, LBm;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(LBj;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 144
    instance-of v1, p1, LBm;

    if-eqz v1, :cond_4c

    .line 145
    check-cast p1, LBm;

    .line 146
    iget-boolean v1, p0, LBm;->c:Z

    if-nez v1, :cond_4c

    iget-boolean v1, p1, LBm;->c:Z

    if-nez v1, :cond_4c

    iget v1, p0, LBm;->b:I

    iget v2, p1, LBm;->b:I

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, LBm;->a:Ljava/lang/String;

    iget-object v2, p1, LBm;->a:Ljava/lang/String;

    invoke-static {v1, v2}, LBm;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, LBm;->b:Ljava/lang/String;

    iget-object v2, p1, LBm;->b:Ljava/lang/String;

    invoke-static {v1, v2}, LBm;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, LBm;->a:Z

    iget-boolean v2, p1, LBm;->a:Z

    if-ne v1, v2, :cond_4c

    iget-boolean v1, p0, LBm;->b:Z

    iget-boolean v2, p1, LBm;->b:Z

    if-ne v1, v2, :cond_4c

    iget v1, p0, LBm;->a:I

    iget v2, p1, LBm;->a:I

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, LBm;->a:LEn;

    iget-object v2, p1, LBm;->a:LEn;

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, LBm;->c:Ljava/lang/String;

    iget-object v2, p1, LBm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, LBm;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v0, 0x1

    .line 158
    :cond_4c
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, LBm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 207
    iget v0, p0, LBm;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, LBm;->a:Z

    return v0
.end method
