.class public interface abstract annotation Lcom/google/common/base/DisableFlag;
.super Ljava/lang/Object;
.source "DisableFlag.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation
