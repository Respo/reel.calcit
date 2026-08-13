# Preserve generated artifact ignores

The Calcit 0.13.13 migration needs `.calcit/` ignored for local diagnostics,
but it must retain the repository's existing ignores for generated JavaScript,
Vite output, installed packages, and Yarn state. Restoring these rules keeps
the upgrade PR focused on source and dependency metadata.
