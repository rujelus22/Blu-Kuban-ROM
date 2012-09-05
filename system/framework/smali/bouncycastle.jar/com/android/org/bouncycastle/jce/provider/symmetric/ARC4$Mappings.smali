.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;
.super Ljava/util/HashMap;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v0, "Cipher.ARC4"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.ARC4$Base"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "Alg.Alias.Cipher.ARCFOUR"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "Alg.Alias.Cipher.RC4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "KeyGenerator.ARC4"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.ARC4$KeyGen"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Alg.Alias.KeyGenerator.RC4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
