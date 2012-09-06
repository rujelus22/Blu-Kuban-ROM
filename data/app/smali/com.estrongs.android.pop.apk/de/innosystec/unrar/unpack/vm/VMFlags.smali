.class public final enum Lde/innosystec/unrar/unpack/vm/VMFlags;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/innosystec/unrar/unpack/vm/VMFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMFlags;

.field public static final enum VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

.field public static final enum VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

.field public static final enum VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMFlags;

    const-string v1, "VM_FC"

    invoke-direct {v0, v1, v5, v3}, Lde/innosystec/unrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMFlags;

    const-string v1, "VM_FZ"

    invoke-direct {v0, v1, v3, v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/VMFlags;

    const-string v1, "VM_FS"

    const/high16 v2, -0x8000

    invoke-direct {v0, v1, v4, v2}, Lde/innosystec/unrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    const/4 v0, 0x3

    new-array v0, v0, [Lde/innosystec/unrar/unpack/vm/VMFlags;

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    aput-object v1, v0, v5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    aput-object v1, v0, v3

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    aput-object v1, v0, v4

    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/innosystec/unrar/unpack/vm/VMFlags;->flag:I

    return-void
.end method

.method public static findFlag(I)Lde/innosystec/unrar/unpack/vm/VMFlags;
    .registers 2

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    goto :goto_a

    :cond_16
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lde/innosystec/unrar/unpack/vm/VMFlags;
    .registers 2

    const-class v0, Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/VMFlags;

    return-object v0
.end method

.method public static values()[Lde/innosystec/unrar/unpack/vm/VMFlags;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->ENUM$VALUES:[Lde/innosystec/unrar/unpack/vm/VMFlags;

    array-length v1, v0

    new-array v2, v1, [Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMFlags;->flag:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getFlag()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMFlags;->flag:I

    return v0
.end method
