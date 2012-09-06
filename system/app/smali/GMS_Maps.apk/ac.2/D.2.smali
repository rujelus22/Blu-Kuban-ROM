.class public abstract enum LaC/D;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaC/D;

.field public static final enum b:LaC/D;

.field public static final enum c:LaC/D;

.field public static final enum d:LaC/D;

.field public static final enum e:LaC/D;

.field private static final synthetic i:[LaC/D;


# instance fields
.field protected f:I

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, LaC/E;

    const-string v1, "RATE_AND_REVIEW"

    const v4, 0x7f02036a

    const/16 v5, 0x3b6

    move v3, v2

    invoke-direct/range {v0 .. v5}, LaC/E;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, LaC/D;->a:LaC/D;

    .line 176
    new-instance v3, LaC/F;

    const-string v4, "CHECKIN_OR_CHECKOUT"

    const v7, 0x7f0200aa

    const/16 v8, 0x3b1

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, LaC/F;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaC/D;->b:LaC/D;

    .line 194
    new-instance v3, LaC/G;

    const-string v4, "UPLOAD_PHOTO"

    const v7, 0x7f0200c7

    const/16 v8, 0x3c4

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, LaC/G;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaC/D;->c:LaC/D;

    .line 200
    new-instance v3, LaC/H;

    const-string v4, "PLACE_PAGE"

    const v7, 0x7f020278

    const/16 v8, 0x3b5

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, LaC/H;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaC/D;->d:LaC/D;

    .line 206
    new-instance v3, LaC/I;

    const-string v4, "LOCATION_SELECTOR"

    const/4 v7, -0x1

    const/16 v8, 0x3b3

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, LaC/I;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaC/D;->e:LaC/D;

    .line 169
    const/4 v0, 0x5

    new-array v0, v0, [LaC/D;

    sget-object v1, LaC/D;->a:LaC/D;

    aput-object v1, v0, v2

    sget-object v1, LaC/D;->b:LaC/D;

    aput-object v1, v0, v9

    sget-object v1, LaC/D;->c:LaC/D;

    aput-object v1, v0, v10

    sget-object v1, LaC/D;->d:LaC/D;

    aput-object v1, v0, v11

    sget-object v1, LaC/D;->e:LaC/D;

    aput-object v1, v0, v12

    sput-object v0, LaC/D;->i:[LaC/D;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput p3, p0, LaC/D;->g:I

    .line 219
    iput p4, p0, LaC/D;->h:I

    .line 220
    iput p5, p0, LaC/D;->f:I

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILaC/C;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct/range {p0 .. p5}, LaC/D;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaC/D;
    .registers 2
    .parameter

    .prologue
    .line 169
    const-class v0, LaC/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaC/D;

    return-object v0
.end method

.method public static values()[LaC/D;
    .registers 1

    .prologue
    .line 169
    sget-object v0, LaC/D;->i:[LaC/D;

    invoke-virtual {v0}, [LaC/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaC/D;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 228
    iget v0, p0, LaC/D;->f:I

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, LaC/D;->h:I

    return v0
.end method

.method public abstract c()V
.end method
