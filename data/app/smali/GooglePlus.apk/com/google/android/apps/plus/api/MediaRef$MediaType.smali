.class public final enum Lcom/google/android/apps/plus/api/MediaRef$MediaType;
.super Ljava/lang/Enum;
.source "MediaRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/api/MediaRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/api/MediaRef$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/api/MediaRef$MediaType;

.field public static final enum IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

.field public static final enum VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 25
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    sget-object v1, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->$VALUES:[Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->mValue:I

    .line 45
    return-void
.end method

.method public static valueOf(I)Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .registers 2
    .parameter "value"

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_c

    .line 37
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 35
    :pswitch_5
    sget-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_4

    .line 36
    :pswitch_8
    sget-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_4

    .line 34
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->$VALUES:[Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/api/MediaRef$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->mValue:I

    return v0
.end method
