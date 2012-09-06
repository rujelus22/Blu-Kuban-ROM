.class public final enum Lcom/google/googlenav/settings/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/settings/e;

.field public static final enum b:Lcom/google/googlenav/settings/e;

.field public static final enum c:Lcom/google/googlenav/settings/e;

.field public static final enum d:Lcom/google/googlenav/settings/e;

.field private static final synthetic j:[Lcom/google/googlenav/settings/e;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 113
    new-instance v0, Lcom/google/googlenav/settings/e;

    const-string v1, "GET_DIRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x5f

    const v4, 0x7f020205

    const v5, 0x7f020206

    const/16 v6, 0x262

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/settings/e;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/google/googlenav/settings/e;->a:Lcom/google/googlenav/settings/e;

    .line 120
    new-instance v0, Lcom/google/googlenav/settings/e;

    const-string v1, "DRIVING_NAVIGATION"

    const/4 v2, 0x1

    const/16 v3, 0x5e

    const v4, 0x7f020207

    const v5, 0x7f020208

    const/16 v6, 0x25c

    const/16 v7, 0x45

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/settings/e;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/e;

    .line 127
    new-instance v0, Lcom/google/googlenav/settings/e;

    const-string v1, "CALL"

    const/4 v2, 0x2

    const/16 v3, 0x5d

    const v4, 0x7f020203

    const v5, 0x7f020204

    const/16 v6, 0x10

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/settings/e;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/google/googlenav/settings/e;->c:Lcom/google/googlenav/settings/e;

    .line 134
    new-instance v0, Lcom/google/googlenav/settings/e;

    const-string v1, "STREET_VIEW"

    const/4 v2, 0x3

    const/16 v3, 0x60

    const v4, 0x7f020209

    const v5, 0x7f02020a

    const/16 v6, 0x258

    const/16 v7, 0x39

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/settings/e;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/google/googlenav/settings/e;->d:Lcom/google/googlenav/settings/e;

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/settings/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/settings/e;->a:Lcom/google/googlenav/settings/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/googlenav/settings/e;->c:Lcom/google/googlenav/settings/e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/googlenav/settings/e;->d:Lcom/google/googlenav/settings/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/settings/e;->j:[Lcom/google/googlenav/settings/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/google/googlenav/settings/e;->e:I

    .line 150
    iput p4, p0, Lcom/google/googlenav/settings/e;->f:I

    .line 151
    iput p5, p0, Lcom/google/googlenav/settings/e;->g:I

    .line 152
    iput p6, p0, Lcom/google/googlenav/settings/e;->h:I

    .line 153
    iput p7, p0, Lcom/google/googlenav/settings/e;->i:I

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/e;)I
    .registers 2
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/google/googlenav/settings/e;->h:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/settings/e;
    .registers 2
    .parameter

    .prologue
    .line 112
    const-class v0, Lcom/google/googlenav/settings/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/e;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/settings/e;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/googlenav/settings/e;->j:[Lcom/google/googlenav/settings/e;

    invoke-virtual {v0}, [Lcom/google/googlenav/settings/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/settings/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/google/googlenav/settings/e;->e:I

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/googlenav/settings/e;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/google/googlenav/settings/e;->g:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/google/googlenav/settings/e;->h:I

    return v0
.end method
