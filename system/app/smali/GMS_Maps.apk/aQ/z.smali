.class public abstract enum LaQ/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaQ/z;

.field public static final enum b:LaQ/z;

.field public static final enum c:LaQ/z;

.field public static final enum d:LaQ/z;

.field private static final synthetic h:[LaQ/z;


# instance fields
.field protected e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, LaQ/A;

    const-string v1, "RATE_AND_REVIEW"

    const v4, 0x7f0202fc

    const/16 v5, 0x2fc

    move v3, v2

    invoke-direct/range {v0 .. v5}, LaQ/A;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, LaQ/z;->a:LaQ/z;

    new-instance v3, LaQ/B;

    const-string v4, "CHECKIN_OR_CHECKOUT"

    const v7, 0x7f02008d

    const/16 v8, 0x2f7

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, LaQ/B;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaQ/z;->b:LaQ/z;

    new-instance v3, LaQ/C;

    const-string v4, "PLACE_PAGE"

    const v7, 0x7f020221

    const/16 v8, 0x2fb

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, LaQ/C;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaQ/z;->c:LaQ/z;

    new-instance v3, LaQ/D;

    const-string v4, "LOCATION_SELECTOR"

    const/4 v7, -0x1

    const/16 v8, 0x2f9

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, LaQ/D;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, LaQ/z;->d:LaQ/z;

    const/4 v0, 0x4

    new-array v0, v0, [LaQ/z;

    sget-object v1, LaQ/z;->a:LaQ/z;

    aput-object v1, v0, v2

    sget-object v1, LaQ/z;->b:LaQ/z;

    aput-object v1, v0, v9

    sget-object v1, LaQ/z;->c:LaQ/z;

    aput-object v1, v0, v10

    sget-object v1, LaQ/z;->d:LaQ/z;

    aput-object v1, v0, v11

    sput-object v0, LaQ/z;->h:[LaQ/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LaQ/z;->f:I

    iput p4, p0, LaQ/z;->g:I

    iput p5, p0, LaQ/z;->e:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILaQ/y;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, LaQ/z;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaQ/z;
    .registers 2

    const-class v0, LaQ/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaQ/z;

    return-object v0
.end method

.method public static values()[LaQ/z;
    .registers 1

    sget-object v0, LaQ/z;->h:[LaQ/z;

    invoke-virtual {v0}, [LaQ/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaQ/z;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .registers 2

    iget v0, p0, LaQ/z;->e:I

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()I
    .registers 2

    iget v0, p0, LaQ/z;->g:I

    return v0
.end method

.method public abstract c()V
.end method
