.class public Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V
    .registers 5
    .parameter "type"
    .parameter "code"
    .parameter "messageStringResource"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 182
    iput p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    .line 183
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "code"
    .parameter "message"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 171
    iput p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    .line 172
    iput-object p3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_4

    .line 205
    :cond_3
    :goto_3
    return v1

    .line 202
    :cond_4
    instance-of v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 205
    .local v0, other:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    iget v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2f
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 215
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 220
    const-string v0, "Error[type=%s,code=%d,message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void
.end method
