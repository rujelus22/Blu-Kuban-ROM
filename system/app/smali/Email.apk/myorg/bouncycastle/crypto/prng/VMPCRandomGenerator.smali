.class public Lmyorg/bouncycastle/crypto/prng/VMPCRandomGenerator;
.super Ljava/lang/Object;
.source "VMPCRandomGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/prng/RandomGenerator;


# instance fields
.field private P:[B

.field private n:B

.field private s:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-byte v0, p0, Lmyorg/bouncycastle/crypto/prng/VMPCRandomGenerator;->n:B

    .line 23
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/prng/VMPCRandomGenerator;->P:[B

    .line 72
    const/16 v0, -0x42

    iput-byte v0, p0, Lmyorg/bouncycastle/crypto/prng/VMPCRandomGenerator;->s:B

    .line 75
    return-void

    .line 23
    :array_14
    .array-data 0x1
        0xbbt
        0x2ct
        0x62t
        0x7ft
        0xb5t
        0xaat
        0xd4t
        0xdt
        0x81t
        0xfet
        0xb2t
        0x82t
        0xcbt
        0xa0t
        0xa1t
        0x8t
        0x18t
        0x71t
        0x56t
        0xe8t
        0x49t
        0x2t
        0x10t
        0xc4t
        0xdet
        0x35t
        0xa5t
        0xect
        0x80t
        0x12t
        0xb8t
        0x69t
        0xdat
        0x2ft
        0x75t
        0xcct
        0xa2t
        0x9t
        0x36t
        0x3t
        0x61t
        0x2dt
        0xfdt
        0xe0t
        0xddt
        0x5t
        0x43t
        0x90t
        0xadt
        0xc8t
        0xe1t
        0xaft
        0x57t
        0x9bt
        0x4ct
        0xd8t
        0x51t
        0xaet
        0x50t
        0x85t
        0x3ct
        0xat
        0xe4t
        0xf3t
        0x9ct
        0x26t
        0x23t
        0x53t
        0xc9t
        0x83t
        0x97t
        0x46t
        0xb1t
        0x99t
        0x64t
        0x31t
        0x77t
        0xd5t
        0x1dt
        0xd6t
        0x78t
        0xbdt
        0x5et
        0xb0t
        0x8at
        0x22t
        0x38t
        0xf8t
        0x68t
        0x2bt
        0x2at
        0xc5t
        0xd3t
        0xf7t
        0xbct
        0x6ft
        0xdft
        0x4t
        0xe5t
        0x95t
        0x3et
        0x25t
        0x86t
        0xa6t
        0xbt
        0x8ft
        0xf1t
        0x24t
        0xet
        0xd7t
        0x40t
        0xb3t
        0xcft
        0x7et
        0x6t
        0x15t
        0x9at
        0x4dt
        0x1ct
        0xa3t
        0xdbt
        0x32t
        0x92t
        0x58t
        0x11t
        0x27t
        0xf4t
        0x59t
        0xd0t
        0x4et
        0x6at
        0x17t
        0x5bt
        0xact
        0xfft
        0x7t
        0xc0t
        0x65t
        0x79t
        0xfct
        0xc7t
        0xcdt
        0x76t
        0x42t
        0x5dt
        0xe7t
        0x3at
        0x34t
        0x7at
        0x30t
        0x28t
        0xft
        0x73t
        0x1t
        0xf9t
        0xd1t
        0xd2t
        0x19t
        0xe9t
        0x91t
        0xb9t
        0x5at
        0xedt
        0x41t
        0x6dt
        0xb4t
        0xc3t
        0x9et
        0xbft
        0x63t
        0xfat
        0x1ft
        0x33t
        0x60t
        0x47t
        0x89t
        0xf0t
        0x96t
        0x1at
        0x5ft
        0x93t
        0x3dt
        0x37t
        0x4bt
        0xd9t
        0xa8t
        0xc1t
        0x1bt
        0xf6t
        0x39t
        0x8bt
        0xb7t
        0xct
        0x20t
        0xcet
        0x88t
        0x6et
        0xb6t
        0x74t
        0x8et
        0x8dt
        0x16t
        0x29t
        0xf2t
        0x87t
        0xf5t
        0xebt
        0x70t
        0xe3t
        0xfbt
        0x55t
        0x9ft
        0xc6t
        0x44t
        0x4at
        0x45t
        0x7dt
        0xe2t
        0x6bt
        0x5ct
        0x6ct
        0x66t
        0xa9t
        0x8ct
        0xeet
        0x84t
        0x13t
        0xa7t
        0x1et
        0x9dt
        0xdct
        0x67t
        0x48t
        0xbat
        0x2et
        0xe6t
        0xa4t
        0xabt
        0x7ct
        0x94t
        0x0t
        0x21t
        0xeft
        0xeat
        0xbet
        0xcat
        0x72t
        0x4ft
        0x52t
        0x98t
        0x3ft
        0xc2t
        0x14t
        0x7bt
        0x3bt
        0x54t
    .end array-data
.end method