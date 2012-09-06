.class public final enum LkV;
.super Ljava/lang/Enum;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LkV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LkV;

.field private static final synthetic a:[LkV;

.field public static final enum b:LkV;

.field public static final enum c:LkV;

.field public static final enum d:LkV;

.field public static final enum e:LkV;

.field public static final enum f:LkV;


# instance fields
.field private final a:I

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, LkV;

    const-string v1, "ZIP"

    sget v3, LcR;->ic_type_zip:I

    sget v4, LcR;->ic_type_zip_big:I

    new-instance v5, LkW;

    invoke-direct {v5}, LkW;-><init>()V

    invoke-direct/range {v0 .. v5}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v0, LkV;->a:LkV;

    .line 70
    new-instance v3, LkV;

    const-string v4, "PICTURE"

    sget v6, LcR;->ic_type_image:I

    sget v7, LcR;->ic_type_image_big:I

    new-instance v8, LkX;

    invoke-direct {v8}, LkX;-><init>()V

    move v5, v9

    invoke-direct/range {v3 .. v8}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v3, LkV;->b:LkV;

    .line 95
    new-instance v3, LkV;

    const-string v4, "MOVIE"

    sget v6, LcR;->ic_type_video:I

    sget v7, LcR;->ic_type_video_big:I

    new-instance v8, LkY;

    invoke-direct {v8}, LkY;-><init>()V

    move v5, v10

    invoke-direct/range {v3 .. v8}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v3, LkV;->c:LkV;

    .line 113
    new-instance v3, LkV;

    const-string v4, "MSWORD"

    sget v6, LcR;->ic_type_word:I

    sget v7, LcR;->ic_type_word_big:I

    new-instance v8, LkZ;

    invoke-direct {v8}, LkZ;-><init>()V

    move v5, v11

    invoke-direct/range {v3 .. v8}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v3, LkV;->d:LkV;

    .line 121
    new-instance v3, LkV;

    const-string v4, "MSEXCEL"

    sget v6, LcR;->ic_type_excel:I

    sget v7, LcR;->ic_type_excel_big:I

    new-instance v8, Lla;

    invoke-direct {v8}, Lla;-><init>()V

    move v5, v12

    invoke-direct/range {v3 .. v8}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v3, LkV;->e:LkV;

    .line 131
    new-instance v3, LkV;

    const-string v4, "MSPOWERPOINT"

    const/4 v5, 0x5

    sget v6, LcR;->ic_type_powerpoint:I

    sget v7, LcR;->ic_type_powerpoint_big:I

    new-instance v8, Llb;

    invoke-direct {v8}, Llb;-><init>()V

    invoke-direct/range {v3 .. v8}, LkV;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    sput-object v3, LkV;->f:LkV;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [LkV;

    sget-object v1, LkV;->a:LkV;

    aput-object v1, v0, v2

    sget-object v1, LkV;->b:LkV;

    aput-object v1, v0, v9

    sget-object v1, LkV;->c:LkV;

    aput-object v1, v0, v10

    sget-object v1, LkV;->d:LkV;

    aput-object v1, v0, v11

    sget-object v1, LkV;->e:LkV;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, LkV;->f:LkV;

    aput-object v2, v0, v1

    sput-object v0, LkV;->a:[LkV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, LkV;->a:I

    .line 149
    iput p4, p0, LkV;->b:I

    .line 150
    iput-object p5, p0, LkV;->a:Ljava/util/List;

    .line 151
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LkV;
    .registers 2
    .parameter

    .prologue
    .line 60
    const-class v0, LkV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LkV;

    return-object v0
.end method

.method public static values()[LkV;
    .registers 1

    .prologue
    .line 60
    sget-object v0, LkV;->a:[LkV;

    invoke-virtual {v0}, [LkV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LkV;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, LkV;->a:I

    return v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, LkV;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, LkV;->b:I

    return v0
.end method
