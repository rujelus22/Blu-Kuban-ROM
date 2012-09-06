.class public final enum LAt;
.super Ljava/lang/Enum;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAt;

.field private static final synthetic a:[LAt;

.field public static final enum b:LAt;

.field public static final enum c:LAt;

.field public static final enum d:LAt;

.field public static final enum e:LAt;

.field public static final enum f:LAt;

.field public static final enum g:LAt;


# instance fields
.field private final a:I

.field private final a:LAW;

.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 82
    new-instance v0, LAt;

    const-string v1, "BOLD"

    sget-object v3, LAW;->a:LAW;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v5, Lup;->toolbar_bold_button:I

    sget v6, Luo;->action_bold:I

    invoke-direct/range {v0 .. v6}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v0, LAt;->a:LAt;

    .line 84
    new-instance v3, LAt;

    const-string v4, "ITALIC"

    sget-object v6, LAW;->b:LAW;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v8, Lup;->toolbar_italic_button:I

    sget v9, Luo;->action_italic:I

    move v5, v11

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->b:LAt;

    .line 86
    new-instance v3, LAt;

    const-string v4, "UNDERLINE"

    sget-object v6, LAW;->c:LAW;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v8, Lup;->toolbar_underline_button:I

    sget v9, Luo;->action_underline:I

    move v5, v12

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->c:LAt;

    .line 88
    new-instance v3, LAt;

    const-string v4, "BULLETED_LIST"

    sget-object v6, LAW;->f:LAW;

    sget-object v7, LwF;->b:LwF;

    sget v8, Lup;->toolbar_bulleted_list_button:I

    sget v9, Luo;->action_bulleted_list:I

    move v5, v13

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->d:LAt;

    .line 90
    new-instance v3, LAt;

    const-string v4, "NUMBERED_LIST"

    const/4 v5, 0x4

    sget-object v6, LAW;->f:LAW;

    sget-object v7, LwF;->c:LwF;

    sget v8, Lup;->toolbar_numbered_list_button:I

    sget v9, Luo;->action_numbered_list:I

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->e:LAt;

    .line 92
    new-instance v3, LAt;

    const-string v4, "COLOR_POPUP"

    const/4 v5, 0x5

    sget v8, Lup;->toolbar_color_button:I

    sget v9, Luo;->action_colour:I

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->f:LAt;

    .line 93
    new-instance v3, LAt;

    const-string v4, "ALIGNMENT_POPUP"

    const/4 v5, 0x6

    sget v8, Lup;->toolbar_alignment_button:I

    sget v9, Luo;->action_text_align_left:I

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, LAt;-><init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V

    sput-object v3, LAt;->g:LAt;

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [LAt;

    sget-object v1, LAt;->a:LAt;

    aput-object v1, v0, v2

    sget-object v1, LAt;->b:LAt;

    aput-object v1, v0, v11

    sget-object v1, LAt;->c:LAt;

    aput-object v1, v0, v12

    sget-object v1, LAt;->d:LAt;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, LAt;->e:LAt;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, LAt;->f:LAt;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LAt;->g:LAt;

    aput-object v2, v0, v1

    sput-object v0, LAt;->a:[LAt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILAW;Ljava/lang/Object;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAW;",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, LAt;->a:LAW;

    .line 107
    iput-object p4, p0, LAt;->a:Ljava/lang/Object;

    .line 108
    iput p5, p0, LAt;->a:I

    .line 109
    iput p6, p0, LAt;->b:I

    .line 110
    return-void
.end method

.method public static synthetic a(LAt;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, LAt;->a:I

    return v0
.end method

.method public static synthetic b(LAt;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, LAt;->b:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)LAt;
    .registers 2
    .parameter

    .prologue
    .line 81
    const-class v0, LAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LAt;

    return-object v0
.end method

.method public static values()[LAt;
    .registers 1

    .prologue
    .line 81
    sget-object v0, LAt;->a:[LAt;

    invoke-virtual {v0}, [LAt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAt;

    return-object v0
.end method


# virtual methods
.method public a(LAV;)Z
    .registers 4
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, LAt;->a:LAW;

    invoke-virtual {p1, v0}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_e

    iget-object v1, p0, LAt;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
