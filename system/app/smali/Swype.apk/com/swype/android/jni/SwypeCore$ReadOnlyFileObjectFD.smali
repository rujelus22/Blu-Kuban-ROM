.class Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;
.super Ljava/lang/Object;
.source "SwypeCore.java"

# interfaces
.implements Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadOnlyFileObjectFD"
.end annotation


# instance fields
.field private afd:Landroid/content/res/AssetFileDescriptor;

.field private privateFd:I

.field final synthetic this$0:Lcom/swype/android/jni/SwypeCore;


# direct methods
.method constructor <init>(Lcom/swype/android/jni/SwypeCore;Landroid/content/res/AssetFileDescriptor;I)V
    .registers 4
    .parameter
    .parameter "afd"
    .parameter "privateFd"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->this$0:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 757
    iput p3, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->privateFd:I

    .line 758
    return-void
.end method


# virtual methods
.method public available()J
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    iget v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->privateFd:I

    if-eqz v0, :cond_e

    .line 762
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->this$0:Lcom/swype/android/jni/SwypeCore;

    iget v1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->privateFd:I

    #calls: Lcom/swype/android/jni/SwypeCore;->nativeCloseDescriptor(I)V
    invoke-static {v0, v1}, Lcom/swype/android/jni/SwypeCore;->access$100(Lcom/swype/android/jni/SwypeCore;I)V

    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->privateFd:I

    .line 765
    :cond_e
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1a

    .line 766
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 769
    :cond_1a
    return-void
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectFD;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method
