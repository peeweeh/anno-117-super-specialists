# Contributing to Super Specialists

Thank you for your interest in contributing! This mod is open for community contributions.

## 🚀 Quick Start

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-specialist`)
3. Make your changes
4. Test in-game
5. Commit with clear messages (`git commit -m 'Add Gracchus Maximus specialist'`)
6. Push to your fork (`git push origin feature/new-specialist`)
7. Open a Pull Request

## 📋 Contribution Guidelines

### Adding New Specialists

Each specialist requires:
- **3 consecutive GUIDs** from the reserved range (see [the GUID catalog](references/guid.md))
- **XML definitions** in `data/base/config/export/assets.xml`
- **Localization** in `data/base/config/gui/texts_english.xml`
- **Trader integration** for purchaseability

See `/plans/SYNTAX-REFERENCE.md` for detailed syntax guide.

### Code Standards

- Use clear, descriptive names (e.g., "Gracchus [Name]")
- Follow existing XML formatting
- Add XML comments for complex sections
- Test all changes in-game before submitting

### GUID Management

- Use GUID range: **1500050000-1500059999**
- Next available: Check [the GUID catalog](references/guid.md)
- Each specialist needs 3 consecutive GUIDs:
  - Item GUID (X)
  - Buff GUID (X+1)
  - Text GUID (X+2)

### Commit Messages

Use conventional commits format:

```
feat: add Gracchus Augustus specialist
fix: correct warehouse buff calculation
docs: update specialist table in README
refactor: reorganize assets.xml structure
```

### Testing Checklist

Before submitting a PR:

- [ ] Mod loads without errors
- [ ] Specialist appears in trader inventory
- [ ] Icon displays correctly
- [ ] Buff applies as expected
- [ ] No GUID conflicts
- [ ] Localization text shows properly
- [ ] Compatible with existing saves

## 🐛 Reporting Issues

When reporting bugs, include:

- Anno 117 version
- Mod version
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable
- Other active mods

## 💡 Suggesting Features

Feature requests are welcome! Please:

- Check existing issues first
- Describe the feature clearly
- Explain the use case
- Consider balance implications

## 📚 Resources

- [Modding Guide](https://github.com/anno-mods/modding-guide)
- [Anno Discord](https://discord.anno-mods.dev)
- [GUID Ranges](https://github.com/anno-mods/GuidRanges)

## 🤔 Questions?

Open a [Discussion](https://github.com/peeweeh/anno-117-super-specialists/discussions) or ask in the Anno Discord.

---

By contributing, you agree that your contributions will be licensed under the MIT License.
