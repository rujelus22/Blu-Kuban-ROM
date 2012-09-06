.class public abstract Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private extensions:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private extensionsIsMutable:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 264
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 266
    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)Lcom/google/protobuf/FieldSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildExtensions()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method private buildExtensions()Lcom/google/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    .line 290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private ensureExtensionsIsMutable()V
    .registers 2

    .prologue
    .line 277
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    if-nez v0, :cond_f

    .line 278
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    .line 281
    :cond_f
    return-void
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_12
    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 378
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 380
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clear()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsIsMutable:Z

    .line 273
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    .end local p0           #this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 389
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .registers 2

    .prologue
    .line 394
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 326
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_14

    .line 328
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$200(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    .line 330
    :goto_13
    return-object v1

    :cond_14
    move-object v1, v0

    goto :goto_13
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;)Z"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, other:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,"TMessageType;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 516
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$300(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 517
    return-void
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .registers 21
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v14

    .line 407
    .local v14, wireType:I
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 409
    .local v6, fieldNumber:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v5

    .line 413
    .local v5, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v12, 0x0

    .line 414
    .local v12, unknown:Z
    const/4 v9, 0x0

    .line 415
    .local v9, packed:Z
    if-nez v5, :cond_24

    .line 416
    const/4 v12, 0x1

    .line 431
    :goto_19
    if-eqz v12, :cond_62

    .line 432
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v15

    .line 511
    :goto_23
    return v15

    .line 417
    :cond_24
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v15

    if-ne v14, v15, :cond_36

    .line 420
    const/4 v9, 0x0

    goto :goto_19

    .line 421
    :cond_36
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z
    invoke-static {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$500(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z

    move-result v15

    if-eqz v15, :cond_60

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;
    invoke-static {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$600(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v15

    if-eqz v15, :cond_60

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v15

    if-ne v14, v15, :cond_60

    .line 426
    const/4 v9, 0x1

    goto :goto_19

    .line 428
    :cond_60
    const/4 v12, 0x1

    goto :goto_19

    .line 435
    :cond_62
    if-eqz v9, :cond_de

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 437
    .local v7, length:I
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 438
    .local v8, limit:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    sget-object v16, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_ac

    .line 439
    :goto_7e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_d5

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 441
    .local v10, rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v13

    .line 443
    .local v13, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v13, :cond_98

    .line 446
    const/4 v15, 0x1

    goto :goto_23

    .line 448
    :cond_98
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    move-object v15, v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_7e

    .line 452
    .end local v10           #rawValue:I
    .end local v13           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_ac
    :goto_ac
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_d5

    .line 453
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v13

    .line 456
    .local v13, value:Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    move-object v15, v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_ac

    .line 460
    .end local v13           #value:Ljava/lang/Object;
    :cond_d5
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 511
    .end local v7           #length:I
    .end local v8           #limit:I
    :goto_db
    const/4 v15, 0x1

    goto/16 :goto_23

    .line 463
    :cond_de
    sget-object v15, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_19c

    .line 497
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v13

    .line 502
    :cond_100
    :goto_100
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v15

    if-eqz v15, :cond_187

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    move-object v15, v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_db

    .line 465
    :pswitch_11e
    const/4 v11, 0x0

    .line 466
    .local v11, subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v15

    if-nez v15, :cond_13e

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    move-object v15, v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    .line 469
    .local v4, existingValue:Lcom/google/protobuf/MessageLite;
    if-eqz v4, :cond_13e

    .line 470
    invoke-interface {v4}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v11

    .line 473
    .end local v4           #existingValue:Lcom/google/protobuf/MessageLite;
    :cond_13e
    if-nez v11, :cond_148

    .line 474
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$700(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v11

    .line 476
    :cond_148
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    sget-object v16, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_169

    .line 478
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v15

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 483
    :goto_164
    invoke-interface {v11}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v13

    .line 484
    .local v13, value:Lcom/google/protobuf/MessageLite;
    goto :goto_100

    .line 481
    .end local v13           #value:Lcom/google/protobuf/MessageLite;
    :cond_169
    move-object/from16 v0, p1

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_164

    .line 487
    .end local v11           #subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    :pswitch_172
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 488
    .restart local v10       #rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v13

    .line 492
    .local v13, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v13, :cond_100

    .line 493
    const/4 v15, 0x1

    goto/16 :goto_23

    .line 506
    .end local v10           #rawValue:I
    .end local v13           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_187
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    move-object v15, v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_db

    .line 463
    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_11e
        :pswitch_172
    .end packed-switch
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 6
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, value:Ljava/lang/Object;,"TType;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 368
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 370
    return-object p0
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 358
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 359
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensions:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 360
    return-object p0
.end method
