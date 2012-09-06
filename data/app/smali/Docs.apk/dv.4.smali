.class public final enum Ldv;
.super Ljava/lang/Enum;
.source "AclType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldv;

.field private static final synthetic a:[Ldv;

.field public static final enum b:Ldv;

.field public static final enum c:Ldv;

.field public static final enum d:Ldv;

.field public static final enum e:Ldv;

.field public static final enum f:Ldv;

.field public static final enum g:Ldv;

.field public static final enum h:Ldv;

.field public static final enum i:Ldv;

.field public static final enum j:Ldv;

.field public static final enum k:Ldv;

.field public static final enum l:Ldv;

.field public static final enum m:Ldv;

.field public static final enum n:Ldv;


# instance fields
.field private final a:I

.field private final a:Ldu;

.field private final a:Ldx;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Ldv;

    const-string v1, "ANYONE_CAN_EDIT"

    sget-object v3, Ldu;->b:Ldu;

    sget-object v4, Ldx;->d:Ldx;

    sget v6, LcY;->sharing_option_anyone_can_edit:I

    move v5, v2

    invoke-direct/range {v0 .. v6}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v0, Ldv;->a:Ldv;

    .line 133
    new-instance v3, Ldv;

    const-string v4, "ANYONE_WITH_LINK_CAN_EDIT"

    sget-object v6, Ldu;->b:Ldu;

    sget-object v7, Ldx;->d:Ldx;

    sget v9, LcY;->sharing_option_anyone_with_link_can_edit:I

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->b:Ldv;

    .line 135
    new-instance v3, Ldv;

    const-string v4, "ANYONE_CAN_COMMENT"

    sget-object v6, Ldu;->c:Ldu;

    sget-object v7, Ldx;->d:Ldx;

    sget v9, LcY;->sharing_option_anyone_can_comment:I

    move v5, v11

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->c:Ldv;

    .line 137
    new-instance v3, Ldv;

    const-string v4, "ANYONE_WITH_LINK_CAN_COMMENT"

    sget-object v6, Ldu;->c:Ldu;

    sget-object v7, Ldx;->d:Ldx;

    sget v9, LcY;->sharing_option_anyone_with_link_can_comment:I

    move v5, v12

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->d:Ldv;

    .line 139
    new-instance v3, Ldv;

    const-string v4, "ANYONE_CAN_VIEW"

    sget-object v6, Ldu;->d:Ldu;

    sget-object v7, Ldx;->d:Ldx;

    sget v9, LcY;->sharing_option_anyone_can_view:I

    move v5, v13

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->e:Ldv;

    .line 141
    new-instance v3, Ldv;

    const-string v4, "ANYONE_WITH_LINK_CAN_VIEW"

    const/4 v5, 0x5

    sget-object v6, Ldu;->d:Ldu;

    sget-object v7, Ldx;->d:Ldx;

    sget v9, LcY;->sharing_option_anyone_with_link_can_view:I

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->f:Ldv;

    .line 144
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_CAN_EDIT"

    const/4 v5, 0x6

    sget-object v6, Ldu;->b:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_can_edit:I

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->g:Ldv;

    .line 146
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_WITH_LINK_CAN_EDIT"

    const/4 v5, 0x7

    sget-object v6, Ldu;->b:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_with_link_can_edit:I

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->h:Ldv;

    .line 148
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_CAN_COMMENT"

    const/16 v5, 0x8

    sget-object v6, Ldu;->c:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_can_comment:I

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->i:Ldv;

    .line 150
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_WITH_LINK_CAN_COMMENT"

    const/16 v5, 0x9

    sget-object v6, Ldu;->c:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_with_link_can_comment:I

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->j:Ldv;

    .line 152
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_CAN_VIEW"

    const/16 v5, 0xa

    sget-object v6, Ldu;->d:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_can_view:I

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->k:Ldv;

    .line 154
    new-instance v3, Ldv;

    const-string v4, "ANYONE_FROM_WITH_LINK_CAN_VIEW"

    const/16 v5, 0xb

    sget-object v6, Ldu;->d:Ldu;

    sget-object v7, Ldx;->c:Ldx;

    sget v9, LcY;->sharing_option_anyone_from_with_link_can_view:I

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->l:Ldv;

    .line 156
    new-instance v3, Ldv;

    const-string v4, "PRIVATE"

    const/16 v5, 0xc

    sget-object v6, Ldu;->g:Ldu;

    sget-object v7, Ldx;->e:Ldx;

    sget v9, LcY;->sharing_option_private:I

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->m:Ldv;

    .line 158
    new-instance v3, Ldv;

    const-string v4, "UNKNOWN"

    const/16 v5, 0xd

    sget-object v6, Ldu;->g:Ldu;

    sget-object v7, Ldx;->e:Ldx;

    sget v9, LcY;->sharing_option_unknown:I

    move v8, v2

    invoke-direct/range {v3 .. v9}, Ldv;-><init>(Ljava/lang/String;ILdu;Ldx;ZI)V

    sput-object v3, Ldv;->n:Ldv;

    .line 130
    const/16 v0, 0xe

    new-array v0, v0, [Ldv;

    sget-object v1, Ldv;->a:Ldv;

    aput-object v1, v0, v2

    sget-object v1, Ldv;->b:Ldv;

    aput-object v1, v0, v10

    sget-object v1, Ldv;->c:Ldv;

    aput-object v1, v0, v11

    sget-object v1, Ldv;->d:Ldv;

    aput-object v1, v0, v12

    sget-object v1, Ldv;->e:Ldv;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Ldv;->f:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldv;->g:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldv;->h:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ldv;->i:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ldv;->j:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ldv;->k:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ldv;->l:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ldv;->m:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ldv;->n:Ldv;

    aput-object v2, v0, v1

    sput-object v0, Ldv;->a:[Ldv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILdu;Ldx;ZI)V
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
            "Ldu;",
            "Ldx;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Ldv;->a:Ldu;

    .line 171
    iput-object p4, p0, Ldv;->a:Ldx;

    .line 172
    iput-boolean p5, p0, Ldv;->a:Z

    .line 173
    iput p6, p0, Ldv;->a:I

    .line 174
    return-void
.end method

.method public static a(Ldu;Ldx;Z)Ldv;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    sget-object v0, Ldu;->g:Ldu;

    invoke-virtual {p0, v0}, Ldu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 200
    invoke-static {}, Ldv;->values()[Ldv;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_2c

    aget-object v0, v2, v1

    .line 201
    iget-object v4, v0, Ldv;->a:Ldu;

    invoke-virtual {v4, p0}, Ldu;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v0, Ldv;->a:Ldx;

    invoke-virtual {v4, p1}, Ldx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-boolean v4, v0, Ldv;->a:Z

    if-ne v4, p2, :cond_28

    .line 208
    :goto_27
    return-object v0

    .line 200
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 208
    :cond_2c
    sget-object v0, Ldv;->n:Ldv;

    goto :goto_27
.end method

.method public static valueOf(Ljava/lang/String;)Ldv;
    .registers 2
    .parameter

    .prologue
    .line 130
    const-class v0, Ldv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldv;

    return-object v0
.end method

.method public static values()[Ldv;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Ldv;->a:[Ldv;

    invoke-virtual {v0}, [Ldv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldv;

    return-object v0
.end method


# virtual methods
.method public a()Ldu;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Ldv;->a:Ldu;

    return-object v0
.end method

.method public a()Ldx;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Ldv;->a:Ldx;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Ldv;->a:Ldx;

    sget-object v1, Ldx;->c:Ldx;

    invoke-virtual {v0, v1}, Ldx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 190
    iget v0, p0, Ldv;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1a
    return-object v0

    :cond_1b
    iget v0, p0, Ldv;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Ldv;->a:Z

    return v0
.end method
